#!/bin/bash
cd /home/opc/DEVNET/WEBEX-CHAT-GPT/
echo "export WEBEX_TOKEN=NTc1ZTY1ZDQtZGMxYS00YzEyLTljMa" >> ~/.bashrc
echo "export GPT_TOKEN=sk-S1rM4MMx3PvYTtr6kDwGT3avP5BxrJUfA5w" >> ~/.bashrc
echo "export WEBEX_DOMAIN=WbxGPT@webex.bot" >> ~/.bashrc
echo "Variables asignadas...ok"
source wbx_gpt/bin/activate 
echo "Python activo.....ok"
source ~/.bashrc
echo "Refresh variables de entorno.... ok"
./wbx_gpt.py
echo "Corriendo el programa...."
