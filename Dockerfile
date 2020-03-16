FROM python:3.8
RUN pip install pipenv
ENTRYPOINT ["pipenv", "run"]
COPY Pipfile Pipfile.lock ./
RUN pipenv install
COPY vespucci.py .
COPY map_0.dat .
CMD ["python", "vespucci.py"]
