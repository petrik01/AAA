##
## Stage 1 - Build using jekyll
##
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off";]
