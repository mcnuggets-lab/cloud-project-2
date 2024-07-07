FROM python:3.12.4-slim-bullseye

# Working directory
WORKDIR /app

# Copy source code to working directory
COPY app.py requirements.txt /app/
COPY templates/ /app/templates/
COPY model/ /app/model/

# Install packages from requirements.txt
# torch must be installed here instead of from the requirements.txt to get the cpu version
RUN pip install --no-cache-dir --upgrade pip --user &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt --user &&\
    pip install --no-cache-dir torch==2.3.1 --index-url https://download.pytorch.org/whl/cpu

EXPOSE 8080

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
