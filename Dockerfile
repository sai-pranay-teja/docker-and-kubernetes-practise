FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
COPY run.sh .
ENTRYPOINT [ "bash", "run.sh" ]