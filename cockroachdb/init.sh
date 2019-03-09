#!/bin/sh

./cockroach sql --insecure --host="cockroachdb" --execute="  DROP USER IF EXISTS maxroach; \
                                        DROP DATABASE IF EXISTS bank CASCADE; \
                                        CREATE DATABASE IF NOT EXISTS bank; \
                                        CREATE USER maxroach; \
                                        GRANT ALL ON DATABASE bank TO maxroach;"


