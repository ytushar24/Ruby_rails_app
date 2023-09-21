#!/bin/bash

/usr/local/bin/wait-for-it.sh db:5432 -t 60

bin/rails db:migrate

exec "$@"

