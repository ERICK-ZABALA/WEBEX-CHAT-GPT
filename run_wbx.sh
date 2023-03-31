#!/bin/bash
cd /home/opc/DEVNET/WEBEX-CHAT-GPT/
echo "export WEBEX_TOKEN=NTc1ZTY1ZDQtZGMxYS00YzEyLTljMDEtMzMzM2VjNzBjZTRiNmE5MGQ5ZDUtZjM3_PF84_81a7c864-4083-4c54-8097-2c1e5ee1140a" >> ~/.bashrc
echo "export GPT_TOKEN=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" >> ~/.bashrc
echo "export WEBEX_DOMAIN=WbxGPT@webex.bot" >> ~/.bashrc
echo "Variables asignadas...ok"
source wbx_gpt/bin/activate 
echo "Python activo.....ok"
source ~/.bashrc
echo "Refresh variables de entorno.... ok"
./wbx_gpt.py
echo "Corriendo el programa...."
