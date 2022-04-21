FROM alpine:3

ENV test_var=${TEST_VAR}
COPY . /
RUN apk add python3
RUN apk add py3-pip
RUN pip3 install tweepy

RUN echo "ADD entrypoint.sh /"
ADD entrypoint.sh /
RUN echo "RUN chmod +x /entrypoint.sh"
RUN chmod +x /entrypoint.sh

RUN echo "ENTRYPOINT entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
