# [![image](https://user-images.githubusercontent.com/38144008/226164092-bdda6ad6-cd04-4ffe-9149-7770101d9c42.png)](https://youtu.be/uuG_UTtXaZw)

[![published](https://static.production.devnetcloud.com/codeexchange/assets/images/devnet-published.svg)](https://developer.cisco.com/codeexchange/github/repo/ERICK-ZABALA/AUTOMATING-A-NETWORK-INVENTORY-WITH-PYTHON) [![Run in Cisco Cloud IDE](https://static.production.devnetcloud.com/codeexchange/assets/images/devnet-runable-icon.svg)](https://developer.cisco.com/devenv/?id=devenv-vscode-base&GITHUB_SOURCE_REPO=https://github.com/ERICK-ZABALA/AUTOMATING-A-NETWORK-INVENTORY-WITH-PYTHON)
# WEBEX AND CHAT GPT

ChatGPT-Webex integration script! This basic script allows you to easily establish communication between ChatGPT, the advanced language model created by OpenAI, and Webex, the popular video conferencing and collaboration platform provided by Cisco. By utilizing API keys provided by OpenAI and Cisco, you can quickly generate an integration that enables seamless communication between these two powerful platforms. The ultimate goal of this project is to facilitate easy and efficient communication between ChatGPT and Webex, unlocking new possibilities for collaboration and innovation. 

Click in the Dino!!!

# CHAT GPT

+ Authentication, generate an API Key

![image](https://user-images.githubusercontent.com/38144008/226156680-7920742d-6018-404e-8a0d-9740e57d5167.png)

Here you have the access: 

https://platform.openai.com/account/api-keys

![image](https://user-images.githubusercontent.com/38144008/226156831-cf1a9049-b011-4100-b7b6-50c657900985.png)

+ BOT ACCESS Token, you need an account Cisco developer.

# WEBEX

Bots, Give Webex users access to outside services right from their Webex spaces. Bots help users automate tasks, bring external content into the discussion, and gain efficiencies.

1. In this section you need to create an new application and create a bot. Use this link: https://developer.webex.com/my-apps. 

![image](https://user-images.githubusercontent.com/38144008/228422343-786c30f4-b7e4-496a-90d1-95a07434101c.png)

2. Then you need to provide a name to your bot and a Bot username*, The username users will use to add your bot to a space.

![image](https://user-images.githubusercontent.com/38144008/226158285-439babfb-10ce-4fdb-b4eb-20653a6b77c2.png)

# INSTALL PYTHON 3.10.2

To install python in your development environment. you can follow these steps.

+ Download Python via console.

`[opc@jenkins-master WBX_GPT]$ wget https://www.python.org/ftp/python/3.10.2/Python-3.10.2.tgz`

+ Extract the downloaded archive by running the following command:

`[opc@jenkins-master WBX_GPT]$  tar -xvf Python-3.10.2.tgz`

Navigate to the extracted directory by running the following command:

```yaml
[opc@jenkins-master WBX_GPT]$ cd Python-3.10.2

[opc@jenkins-master WBX_GPT]$ ./configure --enable-optimizations
```

Build and install Python 3.10 using the following command:

```yaml
[opc@jenkins-master WBX_GPT]$ make

[opc@jenkins-master WBX_GPT]$ sudo make altinstall

[opc@jenkins-master WBX_GPT]$ python3.10.2 --version
Python 3.10.2

```

Then you can create your environment normal...

# CREATE VENV PYTHON 3.10.2 AND DEPENDENCIES

```yaml
[opc@jenkins-master 00_AUTOMATING_A_NETWORK_INVENTORY_WITH_PYTHON]$ python3.10 -m venv wbx_gpt

[opc@jenkins-master 00_AUTOMATING_A_NETWORK_INVENTORY_WITH_PYTHON]$ cd wbx_gpt

[opc@jenkins-master 00_AUTOMATING_A_NETWORK_INVENTORY_WITH_PYTHON]$ source wbx_gpt/bin/activate

(wbx_gpt) [opc@jenkins-master 00_AUTOMATING_A_NETWORK_INVENTORY_WITH_PYTHON]$ python --version
Python 3.10.2
```

+ Install Py VENV with dependencies: webexteamssdk, requests, webex_bot

```yaml
(wbx_gpt) [opc@jenkins-master WBX_GPT]$ pip install webexteamssdk
Collecting webexteamssdk
  Using cached webexteamssdk-1.6.1-py3-none-any.whl (113 kB)
Collecting PyJWT
  Using cached PyJWT-2.6.0-py3-none-any.whl (20 kB)
Collecting requests>=2.4.2
  Using cached requests-2.28.2-py3-none-any.whl (62 kB)
Collecting requests-toolbelt
  Using cached requests_toolbelt-0.10.1-py2.py3-none-any.whl (54 kB)
Collecting future
  Downloading future-0.18.3.tar.gz (840 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 840.9/840.9 kB 10.8 MB/s eta 0:00:00
  Preparing metadata (setup.py) ... done
Collecting urllib3<1.27,>=1.21.1
  Downloading urllib3-1.26.15-py2.py3-none-any.whl (140 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 140.9/140.9 kB 19.7 MB/s eta 0:00:00
Collecting certifi>=2017.4.17
  Using cached certifi-2022.12.7-py3-none-any.whl (155 kB)
Collecting idna<4,>=2.5
  Using cached idna-3.4-py3-none-any.whl (61 kB)
Collecting charset-normalizer<4,>=2
  Downloading charset_normalizer-3.1.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (199 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 199.3/199.3 kB 22.9 MB/s eta 0:00:00
Installing collected packages: urllib3, PyJWT, idna, future, charset-normalizer, certifi, requests, requests-toolbelt, webexteamssdk
  DEPRECATION: future is being installed using the legacy 'setup.py install' method, because it does not have a 'pyproject.toml' and the 'wheel' package is not installed. pip 23.1 will enforce this behaviour change. A possible replacement is to enable the '--use-pep517' option. Discussion can be found at https://github.com/pypa/pip/issues/8559
  Running setup.py install for future ... done
Successfully installed PyJWT-2.6.0 certifi-2022.12.7 charset-normalizer-3.1.0 future-0.18.3 idna-3.4 requests-2.28.2 requests-toolbelt-0.10.1 urllib3-1.26.15 webexteamssdk-1.6.1
```

```yaml
(wbx_gpt) [opc@jenkins-master WBX_GPT]$ pip install requests
Requirement already satisfied: requests in ./wbx_gpt/lib/python3.10/site-packages (2.28.2)
Requirement already satisfied: certifi>=2017.4.17 in ./wbx_gpt/lib/python3.10/site-packages (from requests) (2022.12.7)
Requirement already satisfied: urllib3<1.27,>=1.21.1 in ./wbx_gpt/lib/python3.10/site-packages (from requests) (1.26.15)
Requirement already satisfied: idna<4,>=2.5 in ./wbx_gpt/lib/python3.10/site-packages (from requests) (3.4)
Requirement already satisfied: charset-normalizer<4,>=2 in ./wbx_gpt/lib/python3.10/site-packages (from requests) (3.1.0)
```

```yaml
(wbx_gpt) [opc@jenkins-master WBX_GPT]$ pip install webex_bot
Collecting webex_bot
  Using cached webex_bot-0.3.4-py2.py3-none-any.whl (18 kB)
Collecting backoff
  Using cached backoff-2.2.1-py3-none-any.whl (15 kB)
Requirement already satisfied: webexteamssdk==1.6.1 in ./wbx_gpt/lib/python3.10/site-packages (from webex_bot) (1.6.1)
Collecting coloredlogs
  Using cached coloredlogs-15.0.1-py2.py3-none-any.whl (46 kB)
Collecting websockets==10.2
  Using cached websockets-10.2-cp310-cp310-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_12_x86_64.manylinux2010_x86_64.whl (110 kB)
Requirement already satisfied: requests-toolbelt in ./wbx_gpt/lib/python3.10/site-packages (from webexteamssdk==1.6.1->webex_bot) (0.10.1)
Requirement already satisfied: requests>=2.4.2 in ./wbx_gpt/lib/python3.10/site-packages (from webexteamssdk==1.6.1->webex_bot) (2.28.2)
Requirement already satisfied: PyJWT in ./wbx_gpt/lib/python3.10/site-packages (from webexteamssdk==1.6.1->webex_bot) (2.6.0)
Requirement already satisfied: future in ./wbx_gpt/lib/python3.10/site-packages (from webexteamssdk==1.6.1->webex_bot) (0.18.3)
Collecting humanfriendly>=9.1
  Using cached humanfriendly-10.0-py2.py3-none-any.whl (86 kB)
Requirement already satisfied: certifi>=2017.4.17 in ./wbx_gpt/lib/python3.10/site-packages (from requests>=2.4.2->webexteamssdk==1.6.1->webex_bot) (2022.12.7)
Requirement already satisfied: charset-normalizer<4,>=2 in ./wbx_gpt/lib/python3.10/site-packages (from requests>=2.4.2->webexteamssdk==1.6.1->webex_bot) (3.1.0)
Requirement already satisfied: urllib3<1.27,>=1.21.1 in ./wbx_gpt/lib/python3.10/site-packages (from requests>=2.4.2->webexteamssdk==1.6.1->webex_bot) (1.26.15)
Requirement already satisfied: idna<4,>=2.5 in ./wbx_gpt/lib/python3.10/site-packages (from requests>=2.4.2->webexteamssdk==1.6.1->webex_bot) (3.4)
Installing collected packages: websockets, humanfriendly, backoff, coloredlogs, webex_bot
Successfully installed backoff-2.2.1 coloredlogs-15.0.1 humanfriendly-10.0 webex_bot-0.3.4 websockets-10.2
(wbx_gpt) [opc@jenkins-master WBX_GPT]$ 
```

+ Create requirements.txt to have all the library and version about your project, permt to specify the dependencies of a project, making it easier for others to recreate the same development environment and install the required packages.

```
(wbx_gpt) [opc@jenkins-master WBX_GPT]$  pip install -r requirements.txt.
```


+ Assign file wbx_gpt.py as executable.

```yaml
    (wbx_gpt) [opc@jenkins-master WBX_GPT]$ ls
    wbx_gpt
    (wbx_gpt) [opc@jenkins-master WBX_GPT]$ touch wbx_gpt.py
    (wbx_gpt) [opc@jenkins-master WBX_GPT]$ ls
    wbx_gpt  wbx_gpt.py
    (wbx_gpt) [opc@jenkins-master WBX_GPT]$ chmod +x wbx_gpt.py
    (wbx_gpt) [opc@jenkins-master WBX_GPT]$ ls
    wbx_gpt  wbx_gpt.py
    (wbx_gpt) [opc@jenkins-master WBX_GPT]$ which python
    ~/DEVNET/WBX_GPT/wbx_gpt/bin/python
```

+ Store your credentials as variable of environment


```yaml

(wbx_gpt) [opc@jenkins-master WBX_GPT]$ export WEBEX_TOKEN=NTc1ZTY1ZDQxxxxxxxxxxxxxxxxxiNmE5MGQ5ZDUtZjxxxxxxxxxxxxxx83-4c54-8097-2c1xxxxx >> ~/.bashrc
(wbx_gpt) [opc@jenkins-master WBX_GPT]$ export GPT_TOKEN=sk-q7HxxVxXQxxxxxxxxxxxxxxkFJxxxxxxxxxxxxxw >> ~/.bashrc
(wbx_gpt) [opc@jenkins-master WBX_GPT]$ export WEBEX_DOMAIN=WxxxT@wxxco.bot >> ~/.bashrc
(wbx_gpt) [opc@jenkins-master WBX_GPT]$ source ~/.bashrc
(wbx_gpt) [opc@jenkins-master WBX_GPT]$ echo $WEBEX_TOKEN

```

+ Now we need to set this variable in your code wbx_gpt.py.

```python
import os
WEBEX_TOKEN = os.environ.get('WEBEX_TOKEN')
GPT_TOKEN = os.environ.get('GPT_TOKEN')
WEBEX_DOMAIN = os.environ.get('WEBEX_DOMAIN')

```

+ Add this code in order to check if all is working fine... testing

![image](https://user-images.githubusercontent.com/38144008/226158793-7bfaffed-b9a2-42cf-a430-a2613e699ed6.png)

1. Create this code: 

```python

#!/home/opc/DEVNET/WEBEX-CHAT-GPT/wbx_gpt/bin/python
import os
import requests
from urllib3 import disable_warnings, exceptions
# Import the library
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

```

+ We are going to modify part of the library webex_bot.py

![image](https://user-images.githubusercontent.com/38144008/226158984-d380c656-67e6-438f-8c77-81c422999068.png)


# Step 1

You should add this code in the file webex_bot.py

```python
from webexteamssdk import WebexTeamsAPI

WEBEX_TOKEN = os.environ.get('WEBEX_TOKEN')
GPT_TOKEN = os.environ.get('GPT_TOKEN')
WEBEX_DOMAIN = os.environ.get('WEBEX_DOMAIN')

# Start library WebexTeamsAPI with token stored
api = WebexTeamsAPI(access_token=WEBEX_TOKEN)

```

![image](https://user-images.githubusercontent.com/38144008/226160276-090ab578-a9fb-46f6-bc41-d9fdf0f8cbd6.png)

# Step 2

Replace this function in file webex_bot.py per:

```python

    def process_incoming_message(self, teams_message, activity):
        """
        Process an incoming message, determine the command and action,
        and determine reply.
        :param teams_message: The teams_message object
        :param activity: The websocket activity object
        :return:
        """
        user_email = teams_message.personEmail
        raw_message = teams_message.text
        is_one_on_one_space = 'ONE_ON_ONE' in activity['target']['tags']

        if activity['actor']['type'] != 'PERSON':
            log.debug('message is from a bot, ignoring')
            return
        
        log.info(f"Message from {user_email}: {teams_message} --log")
        
        ############## Capture the message Webex ############################

        self.capture_message(teams_message)    
        
        #####################################################################
        
        if not self.check_user_approved(user_email=user_email, approved_rooms=self.approved_rooms):
            return

        # Remove the Bots display name from the message if this is not a 1-1
        if not is_one_on_one_space:
            raw_message = raw_message.replace(self.bot_display_name, '').strip()

        self.process_raw_command(raw_message, teams_message, user_email, activity)
```

![image](https://user-images.githubusercontent.com/38144008/226160370-1f920719-c97e-434d-a5ec-a4ed00fde608.png)

# Step 3
 
 We are going to create a function send_message_webex(), message_gpt(), capture_message(teams_message).
  
  ```python
          
    def send_message_webex(self, webex_message, person_email):
        # Envía un mensaje instantáneo
        message = api.messages.create(toPersonEmail=person_email, markdown=webex_message)
        print("Sent Message!")
   
    def message_gpt(self, message_gpt, person_email):
        """Retrieve Authentication Token from ACI Controller"""
        # The API send a request message to ChatGPT
        url = "https://api.openai.com/v1/chat/completions"
        person_email = person_email
        header = {
        "Content-Type" : "application/json",
        "Authorization" : f"Bearer {GPT_TOKEN}"
        }
        
        payload = {
        "model": "gpt-3.5-turbo",
        "messages": [{"role": "user", "content": message_gpt}],
        "temperature": 0.7
        }
        
    
        # Send the request to the GPT
        try:
            response = requests.post(url, headers=header, json=payload, verify=False)
            # If the request succeeded, return the token

            if response.status_code == 200:
                print(f'\nReceived Message from Chat GPT4: {response.status_code}')
                
                print(f'\nMessage Chat GPT : {response.json()["choices"][0]["message"]["content"]}')

                self.send_message_webex(response.json()["choices"][0]["message"]["content"], person_email)
                return response.json()
            else:
                return False
        
        except Exception as error_auth:
            print(" Error: Unable to send message to ChatGPT")
            print(error_auth)
            return False

    def capture_message(self, teams_message):
        
        print(type(teams_message)) # <class 'webexteamssdk.models.immutable.Message'>

        # Convert message to dict
        """
        {
            "id": "Y2lzY29zcGFyazovL3VzL01FU1NBR0UvNGM1Yzg5NDAtYzVlYy0xMWVkLWFkNmEtMmQyMzNkMGNjNmQw",
            "roomId": "Y2lzY29zcGFyazovL3VzL1JPT00vMTMzNzY2ODAtYzU2NS0xMWVkLTg1ZjQtNWQzMjAyYjlmM2Y3",
            "roomType": "direct",
            "text": "Cisco",
            "personId": "Y2lzY29zcGFyazovL3VzL1BFT1BMRS8xNTQ4MzZmOC03YmI2LTRlOGUtYTdiMy0yMWI5YmE2NWQ0OTY",
            "personEmail": "xxxxxxx@umail.com",
            "created": "2023-03-19T00:23:40.244Z"
        }
        
        """
        message_dict = teams_message.to_dict()
        print(message_dict["text"]) # Cisco

        # Send message to GPT
        self.message_gpt(message_dict["text"], message_dict["personEmail"] )

        return teams_message

  ```
Note: The other function below just maintain and that's all :)

# Final Integration

![image](https://user-images.githubusercontent.com/38144008/226161524-7561cfa9-a237-49bb-a85c-426012445ff2.png)

![image](https://user-images.githubusercontent.com/38144008/226157157-538d9fd0-0c11-46a1-b975-3f4a6ccad8d9.png)

# REFERENCES

+ Library [webex-bot](https://pypi.org/project/webex-bot/) in the portal web Python. 
+ Library [Webex Team SDK](https://webexteamssdk.readthedocs.io/en/latest/) in the portal web Python.
+ Site of Cisco https://developer.cisco.com/ to create your account.
+ Site Chat [OPEN AI](https://platform.openai.com/) to create your account anf API Key.

