#!/bin/bash

echo 'export $(cat ${PWD}/.env.local | xargs)' >> ~/.bashrc
git config --global --add safe.directory /workspace
git config core.fileMode false
poetry config virtualenvs.in-project true
poetry install
