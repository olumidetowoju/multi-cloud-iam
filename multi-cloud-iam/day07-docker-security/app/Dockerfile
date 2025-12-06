FROM python:3.12-alpine
RUN adduser -D app && mkdir -p /app && chown -R app:app /app
USER app
WORKDIR /app
COPY main.py /app/main.py
CMD ["python", "main.py"]
