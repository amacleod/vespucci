FROM python:3.8
RUN pip install pipenv
ENTRYPOINT ["pipenv", "run"]
COPY Pipenv Pipenv.lock ./
RUN pipenv install
COPY vespucci.py .
CMD ["python", "vespucci.py"]
