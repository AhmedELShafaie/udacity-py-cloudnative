FROM python:rc-alpine

LABEL maintainer="Ahmed Fathy <ahmed.fathy@gmail.com>"
LABEL Usage="Cloud Native Fundamentals Scholarship Program Nanodegree Program"

WORKDIR /app

COPY requirements.txt ./

RUN apk update && apk add curl &&  pip install -r requirements.txt 

COPY . .

EXPOSE 5000

CMD [ "python", "app.py" ]

