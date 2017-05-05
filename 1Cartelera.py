# -*- coding: utf-8 -*-

import requests
import json
import os

payload={"query":busqueda,"api_key":os.environ["key_tmdb"],"language":"es-ES"}
r = requests.get("https://api.themoviedb.org/3/movie/now_playing",params=payload)
if r.status_code == 200:
	print "Peliculas en los cines"
	print "*"*50
	js=json.loads(r.text)
	for i in js["results"]:
		print i["title"],"      ",i["release_date"]
		print i["overview"]
		print i["id"]
		print "-"*50

