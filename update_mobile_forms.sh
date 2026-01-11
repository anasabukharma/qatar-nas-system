#!/bin/bash
# Update all grid-cols-12 form fields to be mobile responsive
sed -i 's/<div className="grid grid-cols-12 items-center">/<div className="flex flex-col md:grid md:grid-cols-12 md:items-center gap-y-2">/g' /home/ubuntu/App.tsx
sed -i 's/<div className="grid grid-cols-12 items-start pt-6">/<div className="flex flex-col md:grid md:grid-cols-12 md:items-start pt-6 gap-y-2">/g' /home/ubuntu/App.tsx
sed -i 's/<div className="col-span-4 flex items-center justify-start pr-12">/<div className="md:col-span-4 flex items-center justify-start md:pr-12">/g' /home/ubuntu/App.tsx
sed -i 's/<div className="col-span-8 flex justify-start">/<div className="md:col-span-8 flex justify-start w-full">/g' /home/ubuntu/App.tsx
