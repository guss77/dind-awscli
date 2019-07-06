FROM docker:latest

RUN \
	apk -Uuv add make gcc groff less python py-pip && \
	pip install awscli docker-compose && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*
