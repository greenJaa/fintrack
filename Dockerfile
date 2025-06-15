FROM python:3-alpine3.22
RUN apk add pipenv
WORKDIR /app
COPY . .
RUN pipenv install
EXPOSE 5001
CMD ["python3","./src/fintrack/app.py"]
