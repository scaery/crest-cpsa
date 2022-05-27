FROM php:5.6.30-fpm-alpine

WORKDIR /app

RUN apk update
RUN apk add git bash

RUN git clone https://github.com/dustinmoorman/flashcards /app
ADD ./crest-cpsa-exam.json ./crest-cpsa-exam.json

ENTRYPOINT ["/usr/local/bin/php","-f","exam","crest-cpsa-exam.json"]

# Unset for individual set of 120 questions
#CMD ["/usr/local/bin/php","-f","exam","crest-cpsa-exam.json","120"]
