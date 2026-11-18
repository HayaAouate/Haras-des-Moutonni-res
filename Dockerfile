# Site statique du Haras des Moutonnières, servi par Nginx sur le port 3007
FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY frontend/ /usr/share/nginx/html/
EXPOSE 3007
HEALTHCHECK --interval=30s --timeout=3s CMD wget -q --spider http://127.0.0.1:3007/ || exit 1
