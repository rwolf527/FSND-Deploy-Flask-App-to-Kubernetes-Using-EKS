FROM python:stretch

COPY requirements.txt /app/
WORKDIR /app
RUN python -m pip install --upgrade pip
RUN python -m pip install -r /app/requirements.txt

COPY *.py /app/

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]