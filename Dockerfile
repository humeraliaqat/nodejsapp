FROM public.ecr.aws/bitnami/node:$CODEBUILD_RESOLVED_SOURCE_VERSION

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
