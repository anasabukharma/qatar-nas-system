import { getAssetFromKV, MethodNotAllowedError, NotFoundError } from '@cloudflare/kv-asset-handler';

interface Env {
  __STATIC_CONTENT_MANIFEST: string;
}

export default {
  async fetch(request: Request, env: Env): Promise<Response> {
    try {
      // Only allow GET and HEAD requests
      if (request.method !== 'GET' && request.method !== 'HEAD') {
        return new Response('Method Not Allowed', { status: 405 });
      }

      const url = new URL(request.url);
      let pathname = url.pathname;

      // Handle SPA routing - serve index.html for non-file routes
      if (!pathname.includes('.') && pathname !== '/') {
        pathname = '/index.html';
      }

      const asset = await getAssetFromKV(
        { request: new Request(new URL(pathname, request.url).toString(), request) },
        { ASSET_NAMESPACE: env.__STATIC_CONTENT_MANIFEST }
      );

      // Set cache headers
      const response = new Response(asset.body, asset);
      response.headers.set('Cache-Control', 'public, max-age=3600');
      return response;
    } catch (error) {
      if (error instanceof NotFoundError) {
        // Serve index.html for SPA routing
        return getAssetFromKV(
          { request: new Request(new URL('/index.html', request.url).toString(), request) },
          { ASSET_NAMESPACE: env.__STATIC_CONTENT_MANIFEST }
        );
      }
      return new Response('Internal Server Error', { status: 500 });
    }
  },
};
