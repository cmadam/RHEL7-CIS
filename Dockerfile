FROM alpine:latest
RUN apk --no-cache add ca-certificates
RUN apk add --update py-pip

# Install python packages
# RUN pip install django==1.2 certifi==2019.3.9 chardet==3.0.4 idna==2.8

# RUN pip install docker==4.1.0 molecule==2.22 python-vagrant==0.5.15 tox==3.14.0
COPY requirements.txt .
RUN pip install -r requirements.txt

CMD [ "tail", "-f", "/dev/null" ]
