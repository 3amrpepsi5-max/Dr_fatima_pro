# backend/Dockerfile
FROM node:18-slim
WORKDIR /app
ENV NODE_ENV=production
COPY package*.json ./
RUN npm install --production
COPY . .
EXPOSE 4000
CMD ["node", "index.js"]
