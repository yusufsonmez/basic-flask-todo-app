#Dockerfile, Image, Container
FROM python:3.10.1

#WORKDIR /flask-todo
COPY requirements.txt .

ADD app.py .

#RUN pip3 install --upgrade pip 
#RUN pip install flask SQLAlchemy
RUN pip install -r requirements.txt

#COPY ./app ./app

CMD [ "python" , "./app.py"]