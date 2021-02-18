FROM python:3

# set a directory for the app
WORKDIR /usr/src/async-fastapi-mongo

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# run the command
CMD ["uvicorn", "app.server.app:app", "--host=0.0.0.0", "--port=8000"]