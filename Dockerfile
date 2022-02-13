FROM python:3.7-slim 
RUN mkdir ~/.pip && \
    echo "[global]" >> ~/.pip/pip.conf && \
    echo "extra-index-url = https://repo.fury.io/mgiessing" >> ~/.pip/pip.conf

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip3 install -r requirements.txt

COPY . /code

WORKDIR /code
EXPOSE 8080
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
