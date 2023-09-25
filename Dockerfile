
FROM ubuntu

RUN apt-get update && apt-get -y install python3
RUN apt-get upgrade -y

RUN apt install python3-pip -y

RUN python3 -m pip install django

RUN apt-get install iproute2 -y

COPY pokemon /usr/pokemon

ENTRYPOINT python3 /usr/pokemon/pokepick/manage.py runserver 172.17.0.2:8000

#CMD ["sleep 60"]

