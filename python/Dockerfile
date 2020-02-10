FROM python:3.7-slim

COPY . /code
WORKDIR /code

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install -e .

COPY . .

ENTRYPOINT python ./mypackage/run.py
