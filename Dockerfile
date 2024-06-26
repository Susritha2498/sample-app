FROM python:3.7

COPY requirements.txt /requirements.txt

WORKDIR /

RUN pip3 install -r requirements.txt
RUN pip install --upgrade Flask Jinja2

COPY . /


ENTRYPOINT [ "python3" ]

CMD [ "app/app.py" ]
