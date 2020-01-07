FROM python:3.8.1

# Create app directory
WORKDIR /opt/app

# Install app dependencies
COPY requirements.txt ./

#Custom Hostname
RUN echo $(grep $(hostname) /etc/hosts | cut -f1) webinspect.com >> /etc/hosts 

# Install Softwares
RUN pip install -r requirements.txt

# Bundle app source
COPY scripts /opt/app

EXPOSE 80
CMD [ "python", "hello.py" ]
