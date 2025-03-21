#!/bin/bash
curl -s http://192.168.43.10 | grep "Hello World" || exit 1
curl -s http://192.168.43.11 | grep "Hello World" || exit 1
curl -s http://192.168.43.12 | grep "Hello World" || exit 1