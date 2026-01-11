export PS1="[CMD_BEGIN]\n\u@\h:\w\n[CMD_END]"; export PS2=""
export TERM=xterm-256color
export OPENAI_API_KEY="sk-Vdgcrv7LabnQm7caNkwHfu"
export OPENAI_API_BASE="https://api.manus.im/api/llm-proxy/v1"
export OPENAI_BASE_URL="https://api.manus.im/api/llm-proxy/v1"
ps() { /bin/ps "$@" | grep -v -E '(start_server\.py|upgrade\.py|supervisor)' || true; }
pgrep() { /usr/bin/pgrep "$@" | while read pid; do [ -n "$pid" ] && cmdline=$(/bin/ps -p $pid -o command= 2>/dev/null) && ! echo "$cmdline" | grep -q -E '(start_server\.py|upgrade\.py|supervisor)' && echo "$pid"; done; }
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && unzip -q /home/ubuntu/upload/fullfront.zip && ls -la
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm install
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
export PS1="[CMD_BEGIN]\n\u@\h:\w\n[CMD_END]"; export PS2=""
export TERM=xterm-256color
export OPENAI_API_KEY="sk-Vdgcrv7LabnQm7caNkwHfu"
export OPENAI_API_BASE="https://api.manus.im/api/llm-proxy/v1"
export OPENAI_BASE_URL="https://api.manus.im/api/llm-proxy/v1"
ps() { /bin/ps "$@" | grep -v -E '(start_server\.py|upgrade\.py|supervisor)' || true; }
pgrep() { /usr/bin/pgrep "$@" | while read pid; do [ -n "$pid" ] && cmdline=$(/bin/ps -p $pid -o command= 2>/dev/null) && ! echo "$cmdline" | grep -q -E '(start_server\.py|upgrade\.py|supervisor)' && echo "$pid"; done; }
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm dev
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && python3 -m http.server 3000
export PS1="[CMD_BEGIN]\n\u@\h:\w\n[CMD_END]"; export PS2=""
export TERM=xterm-256color
export OPENAI_API_KEY="sk-Vdgcrv7LabnQm7caNkwHfu"
export OPENAI_API_BASE="https://api.manus.im/api/llm-proxy/v1"
export OPENAI_BASE_URL="https://api.manus.im/api/llm-proxy/v1"
ps() { /bin/ps "$@" | grep -v -E '(start_server\.py|upgrade\.py|supervisor)' || true; }
pgrep() { /usr/bin/pgrep "$@" | while read pid; do [ -n "$pid" ] && cmdline=$(/bin/ps -p $pid -o command= 2>/dev/null) && ! echo "$cmdline" | grep -q -E '(start_server\.py|upgrade\.py|supervisor)' && echo "$pid"; done; }
export PS1="[CMD_BEGIN]\n\u@\h:\w\n[CMD_END]"; export PS2=""
export TERM=xterm-256color
export OPENAI_API_KEY="sk-Vdgcrv7LabnQm7caNkwHfu"
export OPENAI_API_BASE="https://api.manus.im/api/llm-proxy/v1"
export OPENAI_BASE_URL="https://api.manus.im/api/llm-proxy/v1"
ps() { /bin/ps "$@" | grep -v -E '(start_server\.py|upgrade\.py|supervisor)' || true; }
pgrep() { /usr/bin/pgrep "$@" | while read pid; do [ -n "$pid" ] && cmdline=$(/bin/ps -p $pid -o command= 2>/dev/null) && ! echo "$cmdline" | grep -q -E '(start_server\.py|upgrade\.py|supervisor)' && echo "$pid"; done; }
source /home/ubuntu/.user_env && cd . && cat > /home/ubuntu/server.js << 'EOF'
const express = require('express');
const path = require('path');
const app = express();
const PORT = process.env.PORT || 3000;

// Serve static files from the dist directory
app.use(express.static(path.join(__dirname, 'dist')));

// Handle SPA routing - serve index.html for all routes
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server is running on port ${PORT}`);
});
EOF

cat /home/ubuntu/server.js
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm add express
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && cat package.json | jq '.scripts.start = "node server.js"' > package.json.tmp && mv package.json.tmp package.json && cat package.json
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && rm server.js && cat > server.js << 'EOF'
import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();
const PORT = process.env.PORT || 3000;

// Serve static files from the dist directory
app.use(express.static(path.join(__dirname, 'dist')));

// Handle SPA routing - serve index.html for all routes
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server is running on port ${PORT}`);
});
EOF

export PS1="[CMD_BEGIN]\n\u@\h:\w\n[CMD_END]"; export PS2=""
export TERM=xterm-256color
export OPENAI_API_KEY="sk-Vdgcrv7LabnQm7caNkwHfu"
export OPENAI_API_BASE="https://api.manus.im/api/llm-proxy/v1"
export OPENAI_BASE_URL="https://api.manus.im/api/llm-proxy/v1"
ps() { /bin/ps "$@" | grep -v -E '(start_server\.py|upgrade\.py|supervisor)' || true; }
pgrep() { /usr/bin/pgrep "$@" | while read pid; do [ -n "$pid" ] && cmdline=$(/bin/ps -p $pid -o command= 2>/dev/null) && ! echo "$cmdline" | grep -q -E '(start_server\.py|upgrade\.py|supervisor)' && echo "$pid"; done; }
export PS1="[CMD_BEGIN]\n\u@\h:\w\n[CMD_END]"; export PS2=""
export TERM=xterm-256color
export OPENAI_API_KEY="sk-Vdgcrv7LabnQm7caNkwHfu"
export OPENAI_API_BASE="https://api.manus.im/api/llm-proxy/v1"
export OPENAI_BASE_URL="https://api.manus.im/api/llm-proxy/v1"
ps() { /bin/ps "$@" | grep -v -E '(start_server\.py|upgrade\.py|supervisor)' || true; }
pgrep() { /usr/bin/pgrep "$@" | while read pid; do [ -n "$pid" ] && cmdline=$(/bin/ps -p $pid -o command= 2>/dev/null) && ! echo "$cmdline" | grep -q -E '(start_server\.py|upgrade\.py|supervisor)' && echo "$pid"; done; }
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && node server.js
export PS1="[CMD_BEGIN]\n\u@\h:\w\n[CMD_END]"; export PS2=""
export TERM=xterm-256color
export OPENAI_API_KEY="sk-Vdgcrv7LabnQm7caNkwHfu"
export OPENAI_API_BASE="https://api.manus.im/api/llm-proxy/v1"
export OPENAI_BASE_URL="https://api.manus.im/api/llm-proxy/v1"
ps() { /bin/ps "$@" | grep -v -E '(start_server\.py|upgrade\.py|supervisor)' || true; }
pgrep() { /usr/bin/pgrep "$@" | while read pid; do [ -n "$pid" ] && cmdline=$(/bin/ps -p $pid -o command= 2>/dev/null) && ! echo "$cmdline" | grep -q -E '(start_server\.py|upgrade\.py|supervisor)' && echo "$pid"; done; }
export PS1="[CMD_BEGIN]\n\u@\h:\w\n[CMD_END]"; export PS2=""
export TERM=xterm-256color
export OPENAI_API_KEY="sk-Vdgcrv7LabnQm7caNkwHfu"
export OPENAI_API_BASE="https://api.manus.im/api/llm-proxy/v1"
export OPENAI_BASE_URL="https://api.manus.im/api/llm-proxy/v1"
ps() { /bin/ps "$@" | grep -v -E '(start_server\.py|upgrade\.py|supervisor)' || true; }
pgrep() { /usr/bin/pgrep "$@" | while read pid; do [ -n "$pid" ] && cmdline=$(/bin/ps -p $pid -o command= 2>/dev/null) && ! echo "$cmdline" | grep -q -E '(start_server\.py|upgrade\.py|supervisor)' && echo "$pid"; done; }
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && python3 -m http.server 8080 &
export PS1="[CMD_BEGIN]\n\u@\h:\w\n[CMD_END]"; export PS2=""
export TERM=xterm-256color
export OPENAI_API_KEY="sk-Vdgcrv7LabnQm7caNkwHfu"
export OPENAI_API_BASE="https://api.manus.im/api/llm-proxy/v1"
export OPENAI_BASE_URL="https://api.manus.im/api/llm-proxy/v1"
ps() { /bin/ps "$@" | grep -v -E '(start_server\.py|upgrade\.py|supervisor)' || true; }
pgrep() { /usr/bin/pgrep "$@" | while read pid; do [ -n "$pid" ] && cmdline=$(/bin/ps -p $pid -o command= 2>/dev/null) && ! echo "$cmdline" | grep -q -E '(start_server\.py|upgrade\.py|supervisor)' && echo "$pid"; done; }
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && gh repo create qatar-nas-system --public --description "Qatar National Authentication System" --confirm
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && git init && git add dist/ vercel.json package.json && git commit -m "Initial commit: Qatar NAS System"
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && git add -f dist/ vercel.json package.json && git commit -m "Initial commit: Qatar NAS System"
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && git branch -M main && git remote add origin https://github.com/anasabukharma/qatar-nas-system.git && git push -u origin main
source /home/ubuntu/.user_env && cd . && mkdir -p /home/ubuntu/gh-pages-deploy && cp -r /home/ubuntu/dist/* /home/ubuntu/gh-pages-deploy/
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/gh-pages-deploy && git init && git add . && git commit -m "Deploy to GitHub Pages" && git branch -M gh-pages && git remote add origin https://github.com/anasabukharma/qatar-nas-system.git && git push -f origin gh-pages
source /home/ubuntu/.user_env && cd . && gh api repos/anasabukharma/qatar-nas-system/pages -X POST -f source[branch]=gh-pages -f source[path]=/
source /home/ubuntu/.user_env && cd . && ls -la /home/ubuntu/dist/
source /home/ubuntu/.user_env && cd . && touch /home/ubuntu/dist/index.css
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && gh repo clone anasabukharma/twtheeq2025
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/twtheeq2025 && cp -r /home/ubuntu/dist/* . && ls -la
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/twtheeq2025 && git add . && git commit -m "Deploy Qatar National Authentication System" && git push origin main
source /home/ubuntu/.user_env && cd . && sleep 30
source /home/ubuntu/.user_env && cd . && curl -s https://anasabukharma.github.io/twtheeq2025/ | head -50
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep
source /home/ubuntu/.user_env && cd . && kill 9018
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && find /home/ubuntu -name "*.tsx" -o -name "*.ts" -o -name "*.jsx" -o -name "*.js" | grep -v node_modules | grep -v dist | head -20
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}'
source /home/ubuntu/.user_env && cd . && kill 9329
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && find /home/ubuntu -type f \( -name "*.tsx" -o -name "*.ts" -o -name "*.jsx" -o -name "*.js" \) | grep -v node_modules | grep -v dist | grep -i login
source /home/ubuntu/.user_env && cd . && ls -la /home/ubuntu/components/
source /home/ubuntu/.user_env && cd . && find /home/ubuntu -name "*.html" | grep -v node_modules | grep -v dist | head -10
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}' | xargs -r kill && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}'
source /home/ubuntu/.user_env && cd . && kill 10066
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}'
source /home/ubuntu/.user_env && cd . && kill 10089 && sleep 1 && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cat > /home/ubuntu/update_mobile_forms.sh << 'EOF'
#!/bin/bash
# Update all grid-cols-12 form fields to be mobile responsive
sed -i 's/<div className="grid grid-cols-12 items-center">/<div className="flex flex-col md:grid md:grid-cols-12 md:items-center gap-y-2">/g' /home/ubuntu/App.tsx
sed -i 's/<div className="grid grid-cols-12 items-start pt-6">/<div className="flex flex-col md:grid md:grid-cols-12 md:items-start pt-6 gap-y-2">/g' /home/ubuntu/App.tsx
sed -i 's/<div className="col-span-4 flex items-center justify-start pr-12">/<div className="md:col-span-4 flex items-center justify-start md:pr-12">/g' /home/ubuntu/App.tsx
sed -i 's/<div className="col-span-8 flex justify-start">/<div className="md:col-span-8 flex justify-start w-full">/g' /home/ubuntu/App.tsx
EOF

chmod +x /home/ubuntu/update_mobile_forms.sh
source /home/ubuntu/.user_env && cd . && /home/ubuntu/update_mobile_forms.sh
source /home/ubuntu/.user_env && cd . && sed -i 's/<div className="space-y-5 max-w-\[880px\] mx-auto">/<div className="space-y-5 max-w-[880px] mx-auto">/' /home/ubuntu/App.tsx && grep -n "grid grid-cols-12" /home/ubuntu/App.tsx | head -3
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}' | head -1
source /home/ubuntu/.user_env && cd . && kill 10332
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}' | xargs -r kill && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}' | head -1
source /home/ubuntu/.user_env && cd . && kill 11340 && sleep 1 && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}' | head -1
source /home/ubuntu/.user_env && cd . && kill 11602
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}' | head -1
source /home/ubuntu/.user_env && cd . && kill 11758 && sleep 1 && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}' | xargs -r kill; cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
source /home/ubuntu/.user_env && cd . && grep -n "handleNumericInput" /home/ubuntu/App.tsx | head -20
source /home/ubuntu/.user_env && cd . && cd /home/ubuntu && pnpm build
source /home/ubuntu/.user_env && cd . && ps aux | grep "python3 -m http.server 8080" | grep -v grep | awk '{print $2}' | xargs -r kill; sleep 1; cd /home/ubuntu/dist && nohup python3 -m http.server 8080 > /dev/null 2>&1 &
