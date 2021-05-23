# docker-pytorch-jupyterlab

# How to use

1. `git clone https://github.com/togswr/docker-pytorch-jupyterlab`
2. `docker-compose build`
3. `docker-compose up -d`
4. access `localhost:8888` from your web browser
5. then you can use jupyter-lab having pytorch and torch-geometric

# How to add python package

1. `echo "package-name-you-want" >> requirements/requirements.in`
2. `docker-compose run --rm notebook pip-compile /requirements/requirements.in --output-file /requirements/requirements.txt`
3. `docker-compose build`
4. `docker-compose up -d`
