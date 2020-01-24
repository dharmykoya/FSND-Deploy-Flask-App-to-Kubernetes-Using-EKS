FROM python:stretch
RUN mkdir /myapp
COPY . /myapp
WORKDIR /myapp
RUN pip install -r requirements.txt
EXPOSE 8000
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]