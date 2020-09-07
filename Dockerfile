FROM python:3.7

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
           python-keystoneclient python-swiftclient   \
        && rm -rf /var/lib/apt/lists/*

RUN pip install sklearn numpy pandas imblearn
