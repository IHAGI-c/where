FROM python:3.9.0

WORKDIR /home/

RUN echo "afsaadsafasdfsasad111112aafdfdooodddnl"

RUN git clone https://github.com/IHAGI-c/where.git

WORKDIR /home/where/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=where.settings.deploy && python manage.py migrate --settings=where.settings.deploy && gunicorn where.wsgi --env DJANGO_SETTINGS_MODULE=where.settings.deploy --bind 0.0.0.0:8000"]

