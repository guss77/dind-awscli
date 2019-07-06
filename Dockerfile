FROM docker:latest

RUN \
	apk -Uuv add make gcc python2-dev \
               linux-headers  py-configobj \
               groff less python py-pip && \
	pip install awscli docker-compose && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*
