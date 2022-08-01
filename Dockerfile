FROM cirrusci/flutter as builder
RUN sudo apt update && sudo apt install curl -y
WORKDIR /app
COPY . .

RUN chmod -R 0777 scripts
RUN ./scripts/prepare-web.sh
RUN ./scripts/build-web.sh

FROM docker.io/nginx:alpine
RUN rm -f /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/nginx.conf

RUN rm -rf /usr/share/nginx/html
COPY --from=builder /app/build/web /usr/share/nginx/html

