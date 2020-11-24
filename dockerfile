FROM centos:8
WORKDIR /code
# ENV FLASK_APP=app.py
# ENV FLASK_RUN_HOST=0.0.0.0
RUN sudo yum install -y mongodb-org
COPY ./data ./data
# RUN pip install -r requirements.txt
EXPOSE 27017-27019
COPY . .
CMD ["flask", "run"]