from urllib.request import urlopen
import ssl
import re

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

while True:
    url = input('Enter location (no http): ')
    if len(url) < 1: break
    url = 'http://' + url

    print('Retrieving', url)
    data = urlopen(url, context=ctx).read()

    regEx = 'This is running on the instance <code>(.*)</code>'
    #regEx = input('reg ex: ')

    result = re.findall('[0-9]+', data)
    for r in result:
        print(r)
    print()
    print()
    print(data)

print('End')
