FROM node:16

WORKDIR /app


COPY package.json package-lock.json ./

RUN npm install 

COPY . .

# COPY release.txt ./public/release.txt

# RUN ls
RUN mv release.txt public/release.txt

EXPOSE 2887

CMD [ "node", "app.js" ]
