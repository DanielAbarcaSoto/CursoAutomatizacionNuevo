import json
import requests
import jsonpath

# CREAR JSON MANUALMENTE
odics = '{"K1":"val1","K2":"val2"}'
json_result = json.loads(odics)
print(json_result)

# CREAR JSON DESDE ENLACE
api_url="https://reqres.in/api/users?page=2"

# hacer el request
response1 = requests.get(api_url)
print(response1.text)

# validar estado
assert response1.status_code==200

# convertir a formato json
json_response = json.loads(response1.text)
print(json_response)

# validar mediante jsonpath
x=jsonpath.jsonpath(json_response,'$.total')
print(x[0])
y=jsonpath.jsonpath(json_response,'$.data[0].first_name')
print(y[0])

for val in json_response['data']:
    print(val['first_name'])