FROM  node:slim
ARG mongo
ENV MONGO_URL=$mongo
RUN mkdir -p /home/node/amiya
WORKDIR /home/node/amiya
COPY . .
RUN npm install
EXPOSE 3000
ENTRYPOINT ["node"]
CMD ["app.js"]
