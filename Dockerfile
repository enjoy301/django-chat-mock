FROM python:3.8.9
RUN pip3 install django
RUN pip3 install channels
RUN pip3 install channels_redis
WORKDIR /usr/src/app
COPY . .
WORKDIR ./djangoProject
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000