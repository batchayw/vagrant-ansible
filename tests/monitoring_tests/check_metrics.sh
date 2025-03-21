#!/bin/bash
curl -s http://192.168.43.189:9090/api/v1/query?query=up | grep '"value"' || exit 1