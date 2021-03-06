FROM python:3.7-alpine

ADD statuspage /statuspage
COPY requirements/base.txt /statuspage/requirements.txt

RUN pip install -r /statuspage/requirements.txt

WORKDIR /statuspage

CMD [ "python", "statuspage.py"]
