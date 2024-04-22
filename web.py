#!/usr/bin/python

import requests

page = requests.get('https://www.offsec.com/offsec/game-hacking-intro/')

print(page.status_code)
