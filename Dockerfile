FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
# Accept build-time variables
ARG REACT_APP_API_URL

# Make them available to React build
ENV REACT_APP_API_URL=$REACT_APP_API_URL

ENV HOST=0.0.0.0
ENV PORT=3015

EXPOSE 3010

CMD ["npm", "start"]
