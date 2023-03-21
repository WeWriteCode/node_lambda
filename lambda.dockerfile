FROM public.ecr.aws/lambda/nodejs:latest

COPY /app /var/task
RUN npm install
RUN npm run build

CMD [ "index.handler" ]