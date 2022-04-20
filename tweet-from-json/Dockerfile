FROM alpine:3

ENV test_var=${TEST_VAR}
WORKDIR /github/workspace
COPY . /
RUN apk add python3
RUN apk add py3-pip
RUN pip3 install tweepy
CMD python3 script.py
