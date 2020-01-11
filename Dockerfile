FROM python:3.8.1

USER root

WORKDIR /opt/app

COPY requirements.txt ./

RUN echo $(grep $(hostname) /etc/hosts | cut -f1) webinspect.com >> /etc/hosts \
	&& pip install -r requirements.txt

COPY scripts /opt/app

EXPOSE 80

CMD [ "python", "hello.py" ]