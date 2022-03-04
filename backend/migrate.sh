#!/bin/bash

SUPERUSER_EMAIL=${SUPERUSER_EMAIL:="admin@example.com"}

cd /app/

/opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL --noinput || true