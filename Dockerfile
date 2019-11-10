FROM alpine:latest
RUN apk --no-cache add ca-certificates
RUN apk add --update py-pip

# Install python packages
# COPY requirements.txt .
RUN pip install docker==4.1.0 molecule==2.22 python-vagrant==0.5.15 tox==3.14.0

CMD [ "tail", "-f", "/dev/null" ]
