FROM arm64v8/python:latest

COPY src/system_sensors.py src/sensors.py requirements.txt /

RUN pip3 install -r requirements.txt
RUN apt-get update && apt-get install -y python3-apt wireless-tools

CMD [ "python3", "./system_sensors.py", "/config/settings.yaml" ]
