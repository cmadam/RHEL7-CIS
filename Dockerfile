FROM python:3

# Install python packages
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

CMD [ "tail", "-f", "/dev/null" ]
