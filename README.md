# alpine-ruby-libv8
compile from source (https://github.com/cowboyd/libv8)

## mini_racer

```
docker run --rm -it teradiot/alpine-ruby-libv8  sh
```

```
apk add build-base
gem install mini_racer
ruby -rmini_racer -e "p MiniRacer::Context.new.eval('7 * 6')"
```
