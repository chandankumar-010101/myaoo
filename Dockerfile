FROM cirrusci/flutter as builder
RUN sudo apt update && sudo apt install curl -y
COPY . /app
WORKDIR /app
RUN chmod -R 777 scripts
RUN rm -rf assets/js/package
RUN cd assets/js/ && curl -L 'https://gitlab.com/famedly/company/frontend/libraries/olm/-/jobs/artifacts/master/download?job=build:js' > olm.zip && cd ../../

RUN cd assets/js/ && unzip olm.zip && cd ../../
RUN cd assets/js/ && rm olm.zip && cd ../../
RUN cd assets/js/ && mv javascript package && cd ../../

RUN ./scripts/build-web.sh

FROM docker.io/nginx:alpine
RUN rm -f /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/nginx.conf

RUN rm -rf /usr/share/nginx/html
COPY --from=builder /app/build/web /usr/share/nginx/html

