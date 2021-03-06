from lib import BankHandler

import sys, json

args = []
for l in sys.stdin:
    args.append(l.strip())

if len(args) < 3:
    print('missing arguments')
    quit()

bankuuid = args[0]
id = args[1]
password = args[2]

website = None
if len(args) == 4:
    website = args[3]

accounts = BankHandler(id, password, website).post(bankuuid)
print json.dumps(accounts, ensure_ascii=False).encode('utf-8')
