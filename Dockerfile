FROM jupyter/datascience-notebook:latest

WORKDIR /app
COPY . /app
USER root
RUN apt-get update && apt-get install -y git

USER $USER
RUN pip install --upgrade --pre jupyterlab-git
RUN pip install evidently

RUN jupyter nbextension install --sys-prefix --overwrite --py evidently
RUN jupyter nbextension enable evidently --py --sys-prefix

CMD ["jupyter", "lab", "--allow-root", "--NotebookApp.token=motf2023"]