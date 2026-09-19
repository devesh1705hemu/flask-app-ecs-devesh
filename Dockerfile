# Base image
FROM node:3.14-alpine

# Working directory
WORKDIR /app

#copy the code 
COPY . .

#install all the dependencies 
RUN pip install -r requirements.txt

#Expose the port number 
EXPOSE 80

#Run the app
CMD["run.py","python"]