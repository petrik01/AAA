##
## Stage 1 - Build using jekyll
##
FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off";]
