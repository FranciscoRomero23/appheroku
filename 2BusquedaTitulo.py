# -*- coding: utf-8 -*-

import requests
import json
import os

busqueda=raw_input("Dime que quieres buscar:")
payload={"query":busqueda,"api_key":os.environ["key_tmdb"],"language":"es-ES"}
r = requests.get("http://api.themoviedb.org/3/search/movie",params=payload)
peliculas=[]
if r.status_code == 200:
	js=json.loads(r.text)
	for i in js["results"]:
		print i["title"],"      ",i["release_date"]
		print i["overview"]
		print "-"*50
