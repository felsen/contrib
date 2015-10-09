#!bin/bash

if [ -e manage.py ]; then
    for file in behaviours.py constants.py decorators.py fields.py factories.py helpers.py managers.py signals.py utils.py viewmixins.py
    do
        if [ ! -f $file ]; then
            touch $file
        fi
    done    
    if [ ! -d db ]; then
        mkdir db
    fi
else
    echo "Error : Enter to Django project."
fi

