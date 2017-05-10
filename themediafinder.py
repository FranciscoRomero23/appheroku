# -*- coding: utf-8 -*-
from bottle import route, run, request, template, static_file, redirect
from sys import argv
import requests
import json

@route('/')
def inicio():
    return template('html/plantilla.tpl')
    
@route('/cartelera') 
def cartelera():
	payload={"query":busqueda,"api_key":os.environ["key_tmdb"],"language":"es-ES"}
	r = requests.get("https://api.themoviedb.org/3/movie/now_playing",params=payload)
	js=json.loads(r.text)
	return template("html/cartelera.tpl",js=js)

@route('/style/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='html/style')

#run(host='0.0.0.0', port=8081)
run(host='0.0.0.0', port=argv[1])
