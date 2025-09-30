# Simple Dockerfile - runs backend
FROM node:18-alpine
WORKDIR /app
COPY backend/package.json ./backend/
RUN npm --prefix ./backend install --production
COPY backend ./backend
EXPOSE 3000
CMD ["node", "backend/server.js"]
