FROM python:3.11

ENV PYTHONUNBUFFERED=13

WORKDIR /app

RUN pip install --upgrade pip "poetry==1.4.2"
RUN poetry config virtualenvs.create false --local
COPY pyproject.toml poetry.lock ./
RUN poetry install

COPY mysite .

CMD ["gunicorn", "mysite.wsgi:application", "--bind", "0.0.0.0:8000"]