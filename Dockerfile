from node:22-alpine
workdir /app
copy package*.json .
run npm ci --omit=dev
copy . .
expose 3000
cmd ["npm","start"]