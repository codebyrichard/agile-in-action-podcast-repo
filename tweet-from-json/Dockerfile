FROM alpine:3

ENV test_var=${TEST_VAR}
COPY . /
RUN apk add python3
RUN apk add py3-pip
RUN pip3 install tweepy
ADD script.py
CMD python3 script.py
