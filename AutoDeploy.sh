#! /bin/bash

az group create -n AutoRG -l uksouth

az vm create -g AutoRG -n AutoVM --image UbuntuLTS --ssh-key-value ~/.ssh/id_rsa.pub --custom-data cloud.init.txt

az vm open-port -g AutoRG -n AutoVM --port 80
