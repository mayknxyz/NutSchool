# FROM node:lts AS build
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# RUN npm run build

# FROM nginx:alpine AS runtime
# COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
# COPY --from=build /app/dist /usr/share/nginx/html
# EXPOSE 8080

# Dockerfile
FROM node:lts-alpine

WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./
RUN npm install

# Copy the rest of your application code (will be synced by watch)
COPY . .

# Expose Astro's default development port
EXPOSE 4321

# Command to run Astro's dev server
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]