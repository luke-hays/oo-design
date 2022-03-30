FROM continuumio/miniconda
WORKDIR /app
COPY environment.yml .
RUN conda env create -f environment.yml
SHELL ["conda", "run", "-n", "oo-design", "/bin/bash", "-c"]
RUN python -V
COPY requirements.txt .
RUN pip install -r ./requirements.txt
COPY oo-design .
