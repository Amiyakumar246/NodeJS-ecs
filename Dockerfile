FROM  node:slim
ARG mongo
ENV MONGO_URL=$mongo
RUN mkdir -p /home/node/yan
WORKDIR /home/node/yan
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm","start"]
