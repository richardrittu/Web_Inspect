FROM python:3.8

# Create app directory
WORKDIR /opt/app

# Install app dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY scripts /opt/app

EXPOSE 80
CMD [ "python", "hello.py" ]
