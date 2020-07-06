FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
COPY . /app
WORKDIR /app

## Step 2:
# Copy source code to working directory


## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip 
RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt
RUN pip install flask
RUN pip install flask_restful

## Step 4:
# Expose port 8080
EXPOSE 8080

## Step 5:
# Run app.py at container launch
ENTRYPOINT ["python"]
CMD ["app.py"]