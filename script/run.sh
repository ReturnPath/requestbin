#!/bin/bash -xe

# NOTE: Running with a single worker because MemoryStorage.  If we need higher
# thoughput consider deploying a redis store and increasing the worker count
exec gunicorn --worker-class gevent --workers $WORKERS --max-requests $MAX_REQUESTS requestbin:app
