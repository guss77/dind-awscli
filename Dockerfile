FROM docker:latest

RUN \
	apk -Uuv add make gcc groff less \
		musl-dev libffi-dev openssl-dev \
		python2-dev py-pip && \
	pip install awscli docker-compose && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*
