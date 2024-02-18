#!/bin/bash

echo "Linting....."
npm run eslint

exit_code=$?

if [ $exit_code -ne 0 ]; then
    echo "Erreur de linting. Annulation du commit."
    exit 1
fi
