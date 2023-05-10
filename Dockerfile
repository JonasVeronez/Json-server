FROM node:latest

RUN npm install -g json-server

ARG WORK_DIR=/backend
ENV WORK_DIR ${WORK_DIR}

RUN mkdir ${WORK_DIR}
WORKDIR ${WORK_DIR}

COPY db.json ${WORK_DIR}/db.json

EXPOSE 3000

CMD json-server -H 0.0.0.0 --port 5000 --watch ${WORK_DIR}/db.json