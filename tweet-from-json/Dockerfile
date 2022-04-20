FROM alpine:3

ARG twitter_access_token=""
ENV env_twitter_access_token=${twitter_access_token}
ARG twitter_access_token_secret=""
ENV env_twitter_access_token_secret=${twitter_access_token_secret}
ARG twitter_consumer_key=""
ENV env_twitter_consumer_key=${twitter_consumer_key}
ARG twitter_consumer_secret_key=""
ENV env_twitter_consumer_secret_key=${twitter_consumer_secret_key}

COPY . /
RUN apk add python3
RUN pip3 install tweepy
RUN python3 script.py
