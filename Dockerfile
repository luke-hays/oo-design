FROM continuumio/miniconda
WORKDIR /app
COPY . .
RUN conda env create -f environment.yml
SHELL ["conda", "run", "-n", "oo-design", "/bin/bash", "-c"]
RUN python -V
RUN pip install -r ./requirements.txt
