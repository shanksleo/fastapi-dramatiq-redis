FROM python:3.10

WORKDIR /var/app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple && rm requirements.txt

COPY fastapi-dramatiq-redis/ ./
COPY entrypoint.sh entrypoint.sh

ENTRYPOINT [ "sh", "./entrypoint.sh" ]
