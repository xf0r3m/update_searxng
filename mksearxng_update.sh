#!/bin/bash

bash /usr/local/bin/update_searxng.sh > /home/update_searxng_logs/update_searxng_$(date +%d.%m.%Y).log 2>&1;
