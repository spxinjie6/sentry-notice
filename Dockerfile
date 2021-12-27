FROM getsentry/sentry:21.11.0
# Get latest root certificates
# Run as a non-root user by default, run as user with least privileges.
ARG dir_code=/opt/app

WORKDIR ${dir_code}


# Install the required packages
RUN pip install --no-cache-dir \
            requests sentry \
            -i https://mirrors.aliyun.com/pypi/simple/

# PYTHONUNBUFFERED: Force stdin, stdout and stderr to be totally unbuffered. (equivalent to `python -u`)
# PYTHONHASHSEED: Enable hash randomization (equivalent to `python -R`)
# PYTHONDONTWRITEBYTECODE: Do not write byte files to disk, since we maintain it as readonly. (equivalent to `python -B`)
ENV PYTHONUNBUFFERED=1 PYTHONHASHSEED=random PYTHONDONTWRITEBYTECODE=1
ENV TZ Asia/Shanghai

# Default port
EXPOSE 9300


# docker build -t celery-worker-ops .
# docker run -d --name celery-worker-ops --net=host celery-worker
CMD ["python", "main.py"]
