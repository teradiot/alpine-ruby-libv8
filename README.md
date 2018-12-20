# alpine-ruby-libv8
compile from source (https://github.com/cowboyd/libv8)

Based on https://gist.github.com/tylerchr/15a74b05944cfb90729db6a51265b6c9


## mini_racer

```
docker run --rm -it teradiot/alpine-ruby-libv8  sh
```

```
apk add build-base
gem install mini_racer
ruby -rmini_racer -e "p MiniRacer::Context.new.eval('7 * 6')"
```
