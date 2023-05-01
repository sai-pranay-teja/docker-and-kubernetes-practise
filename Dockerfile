# FROM amazon/aws-cli
# COPY run.sh /
# ENTRYPOINT [ "bash", "/run.sh" ]

FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80