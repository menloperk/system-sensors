FROM arm64v8/python:latest

COPY src/system_sensors.py requirements.txt /

RUN pip3 install -r requirements.txt

CMD [ "python3", "./system_sensors.py" "/config/settings.yaml" ]
