FROM python:3.8.10
RUN pip3 install django
WORKDIR /usr/src/app
COPY . .
WORKDIR ./mysite
CMD ["python", "manage.py", "runserver", "0:8000"]
EXPOSE 8000