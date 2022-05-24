# use the slim-buster python base image
FROM python:3.8-slim-buster

# copy files to container dir
COPY . /app 

# define workdirectory
WORKDIR /app

# install dependencies to run app
RUN pip install -r requirements.txt

# expose port 
EXPOSE 5000

# final run app command inside container
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]