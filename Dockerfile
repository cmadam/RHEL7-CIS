FROM alpine:latest
RUN apk --no-cache add ca-certificates
RUN apk add --update py-pip

# Install python packages
# COPY requirements.txt .
RUN pip install django==1.2 certifi==2019.3.9 chardet==3.0.4 idna==2.8
# RUN pip install molecule==2.22

CMD [ "tail", "-f", "/dev/null" ]
