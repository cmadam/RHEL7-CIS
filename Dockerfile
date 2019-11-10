FROM alpine:latest
RUN apk --no-cache add ca-certificates
RUN apk add --update py-pip

# Install python packages
# COPY requirements.txt .
RUN pip install molecule==2.22

CMD [ "tail", "-f", "/dev/null" ]
