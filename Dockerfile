FROM mcr.microsoft.com/playwright:v1.37.1-jammy

RUN mkdir /app
WORKDIR /app

COPY package*.json /app/

RUN npm install --force

COPY . /app/

RUN npx playwright install-deps --force
