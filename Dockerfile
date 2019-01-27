##
## Stage 1 - Build using jekyll
##
FROM debian:latest as builder

RUN apt-get -qqy update
RUN apt-get -qqy install ruby-full build-essential
RUN gem install bundler jekyll

COPY . /opt/

WORKDIR /opt

RUN bundle install
RUN bundle exec jekyll build

##
## Stage 2 - Create image with jekyll build  which serves nginx
##
FROM nginx:latest

COPY --from=builder /opt/_site /var/www/