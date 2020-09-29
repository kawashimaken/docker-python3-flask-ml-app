FROM python:3.7-buster

RUN apt-get update && apt-get install -y libgl1-mesa-glx
RUN mkdir -p /usr/src/app
ADD ./app /usr/src/app
RUN pip3 install --upgrade pip
RUN pip3 install requests
RUN pip3 install Flask
RUN pip3 install flask-cors
RUN pip3 install opencv-python
RUN pip3 install tensorflow==1.14.0
RUN pip3 install keras==2.2.4
RUN pip3 install chainer
RUN pip3 install Pillow

WORKDIR /usr/src/app
EXPOSE 5000
RUN export FLASK_ENV=development 