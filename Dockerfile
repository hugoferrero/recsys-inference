FROM gcr.io/deeplearning-platform-release/tf2-cpu.2-3
WORKDIR /

# Copies the requirements.txt into the container to reduce network calls.
COPY requirements.txt .
# Installs additional packages.
RUN pip install -U -r requirements.txt

# Copies the trainer code to the docker image.
COPY ./app /app

ENV PYTHONPATH /app

CMD ["uvicorn", "app.main:app", "--proxy-headers", "--host", "0.0.0.0", "--port", "8080"]
