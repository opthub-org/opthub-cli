FROM python:3.9-slim

RUN mkdir -p /work
WORKDIR /work
COPY . /work
RUN pip3 install -e .

ENTRYPOINT ["opt"]
