FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/IHAGI-c/where.git

WORKDIR /home/where/

RUN echo "SECRET_KEY=django-insecure-%##!e6z$wrv=704jgov#^nll!@4c4&3^dbf@mhxz7_!w3ltotz" > .env

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

