FROM node:20-alpine

# RUN addgroup aneeq && adduser -S -G aneeq aneeq

# USER aneeq

WORKDIR /app

COPY package*.json ./

# USER root

# RUN chown -R aneeq:aneeq .

# USER aneeq

RUN npm install

COPY . .

# USER root

# RUN chown -R aneeq:aneeq .

# USER aneeq

EXPOSE 5173

CMD npm run dev