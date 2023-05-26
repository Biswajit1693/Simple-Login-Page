FROM  python:3.9-slim-buster
COPY . /app
WORKDIR /app
RUN pip3 install -r requirement.txt
CMD python3 login.py
EXPOSE 5000
