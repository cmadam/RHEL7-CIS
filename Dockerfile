FROM alpine:latest
RUN apk --no-cache add ca-certificates
RUN apk add --update py-pip

# Install python packages
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

CMD [ "tail", "-f", "/dev/null" ]
