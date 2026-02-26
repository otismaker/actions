FROM node:20-alpine

WORKDIR /app

# Copie d'abord le package.json (meilleure mise en cache)
COPY package.json ./

# RUN npm ci --omit=dev

# Copie le code
COPY app.js ./

ENV PORT=3000
EXPOSE 3000

CMD ["npm", "start"]
