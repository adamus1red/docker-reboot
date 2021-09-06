FROM nginx:mainline-alpine as build-stage

COPY test/src/ /usr/share/nginx/html/
COPY test/conf/nginx-site.conf /etc/nginx/conf.d/default.conf

FROM nginx:mainline-alpine
COPY test/entry.sh /entry.sh
COPY --from=build-stage /usr/share/nginx/html/ /usr/share/nginx/html/
COPY --from=build-stage /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
RUN apk update \
    && apk add --no-cache \
    curl \
    && chmod 755 /entry.sh
EXPOSE 80 8080
ENTRYPOINT ["/entry.sh"]