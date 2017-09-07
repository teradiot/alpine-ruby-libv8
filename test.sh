#!/bin/bash
set -ex


docker build -t alpine-ruby-libv8 .

docker run --rm -it alpine-ruby-libv8 sh -c 'apk add build-base && gem install mini_racer && ruby -rmini_racer -e "p MiniRacer::Context.new.eval(%Q!7 * 6!)"'
