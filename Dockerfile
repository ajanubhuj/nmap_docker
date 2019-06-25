FROM python:alpine3.7

RUN apk update \
    && apk add build-base

# build initial cache | install binary | remove cache
RUN apk update && apk add \
	nmap \
	&& rm -rf /var/cache/apk/*


RUN mkdir /usr/src/app

COPY src /usr/src/app

#COPY ./requirements.txt /usr/src/app/requirements.txt

WORKDIR /usr/src/app

ENV PYTHONPATH /usr/src/app

RUN pip3 install -r requirements.txt

EXPOSE 8093

CMD ["python3" "/usr/src/app/main.py"]

# add nmap as entrypoint
#ENTRYPOINT ["nmap"]
