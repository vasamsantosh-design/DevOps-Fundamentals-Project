#!/bin/bash

SERVICE=apache2

if systemctl is-active --quiet $SERVICE
then
    echo "Apache is Running."
else
    echo "Apache Stopped."
    sudo systemctl restart apache2

    if systemctl is-active --quiet apache2
    then
        echo "Apache restarted successfully."
    else
        echo "Apache restart failed."
    fi
fi
