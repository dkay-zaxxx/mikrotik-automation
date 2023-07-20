import routeros_api

connection = routeros_api.RouterOsApiPool('0.0.0.0', username='admin', password='password', plaintext_login=True)
api = connection.get_api()

api.get_binary_resource('/').call('tool/fetch', {'url': "http://webserver/file.auto.rsc"})
api.get_binary_resource('/').call('import', {'file-name': "file.auto.rsc"})

connection.disconnect()
