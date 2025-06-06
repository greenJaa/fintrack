FROM python:3.9.23-alpine3.22
LABEL MAINTAINER=Oleg
RUN apk add pipenv
WORKDIR /app
COPY ./src/fintrack/app.py ./app.py
RUN pipenv install 
EXPOSE 5001
CMD ["python3","./src/fintrack/app.py"]

