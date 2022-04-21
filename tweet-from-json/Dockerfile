FROM alpine:3

ENV test_var=${TEST_VAR}

RUN apk add python3
RUN apk add py3-pip
RUN pip3 install tweepy

COPY . /

ADD script.py /
ADD entrypoint.sh /

#RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
