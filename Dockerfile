#Docker file to build image
FROM python:3.11

WORKDIR /app
COPY requirements-dev.txt ./
RUN pip3 install -r requirements-dev.txt
COPY . .
RUN python -m build  
bUN pip install --upgrade -e ./dist/template-pkg-0.0.0-py3-none-any.whl --quiet --no-cache-dir -vv 
