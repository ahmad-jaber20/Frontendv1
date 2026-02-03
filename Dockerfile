FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

ENV HOST=0.0.0.0
ENV PORT=3010
ENV REACT_APP_API_URL=http://37.27.31.43:3002

EXPOSE 3010

CMD ["npm", "start"]
