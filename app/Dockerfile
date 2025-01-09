FROM node:16

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y wait-for-it

COPY package*.json ./

RUN npm install

COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/bin/bash", "-c"]

ENV host=mysql
ENV user=root
ENV password=123456789
ENV database=banco-dados-pdsi2
ENV portaServidor=3000
ENV chaveSecretaJsonWebToken=bd9fbf3a97a33b02d4fb49db20dd6fb8

EXPOSE 3000

CMD ["./entrypoint.sh" , "["npm", "start"]" , "--strict" , "--timeout=300" , "--" , "npm start"]