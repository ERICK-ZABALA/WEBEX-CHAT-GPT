#!/home/opc/DEVNET/WEBEX-CHAT-GPT/wbx_gpt/bin/python
import os
import requests
from urllib3 import disable_warnings, exceptions
# Importa la biblioteca de WebEx de Python
from webexteamssdk import WebexTeamsAPI
from webex_bot.webex_bot import WebexBot

disable_warnings(exceptions.InsecureRequestWarning)

WEBEX_TOKEN = os.environ.get('WEBEX_TOKEN')
GPT_TOKEN = os.environ.get('GPT_TOKEN')
WEBEX_DOMAIN = os.environ.get('WEBEX_DOMAIN')

"""

That is an script basic that permit generate an integration between ChatGPT and Webex in this scenario 
need a API key provided for OPENAI (https://platform.openai.com/account/api-keys) and Cisco as well,
provide the Bot token in the page (https://developer.webex.com/).

Goal:

 - Create a comunication between ChatGPT and Webex.

bot@cisco.bot
Token_Webex:"credentials"
Token_ChatGPT:"Bearer credentials"

"""


def receive_messages_webex():
    # Capture all messages received from webex
    bot = WebexBot(teams_bot_token=WEBEX_TOKEN, approved_domains=[WEBEX_DOMAIN])
    bot.run()
    print()

if __name__ == "__main__":

    receive_messages_webex()
