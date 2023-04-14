FROM python
COPY . /app
WORKDIR /app
RUN pip3 install -r requirement.txt
CMD python3 login.py
EXPOSE 5000