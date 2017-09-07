#!/bin/bash
set -ex

VERSION=$1

docker build -t alpine-ruby-libv8 -f $VERSION/Dockerfile .

docker run --rm -it alpine-ruby-libv8 sh -c 'apk add build-base && gem install mini_racer && ruby -rmini_racer -e "p MiniRacer::Context.new.eval(%Q!7 * 6!)"'
