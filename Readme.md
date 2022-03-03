https://djangocentral.com/using-postgresql-with-django/

# Setup Postgres DB

sudo -u postgres psql

CREATE DATABASE django_db;

CREATE USER djangouser WITH ENCRYPTED PASSWORD 'djangopass';

ALTER ROLE djangouser SET client_encoding TO 'utf8';
ALTER ROLE djangouser SET default_transaction_isolation TO 'read committed';
ALTER ROLE djangouser SET timezone TO 'UTC';

GRANT ALL PRIVILEGES ON DATABASE django_db TO djangouser;

\q

-------------------------------

Django Celery Redis Setup 
https://realpython.com/asynchronous-tasks-with-django-and-celery/
https://www.section.io/engineering-education/django-celery-tasks/
https://simpleisbetterthancomplex.com/tutorial/2017/08/20/how-to-use-celery-with-django.html

celery -A app worker -l info
celery -A app beat -l info

-------------------------------