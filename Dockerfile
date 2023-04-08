FROM python:3.10.10

#RUN apt-get update && apt-get install -y python3
# Set the working directory to /app
#ADD ./requirements.txt  /devschool_app/requirements.txt
WORKDIR /flask_app
#ADD .env .
#ADD devschool_good_project.py .
#ADD templates /front.html -----
ADD requirements.txt .
# Copy the current directory contents into the container at /app

RUN pip install -r requirements.txt
#RUN pip install --upgrade pip

#RUN pip install flask requests faker 

#RUN pip install python-dotenv==1.0.0

#RUN pip install -r requirements.txt

COPY . /devschool_app 

#EXPOSE 80

# Define environment variable
#ENV NAME World

# Run app.py when the container launches
CMD ["python", "-u", "/devschool_app/devschool_good_project.py"]
#CMD ["python", "./devschool_good_project.py", "--host=0.0.0.0"]