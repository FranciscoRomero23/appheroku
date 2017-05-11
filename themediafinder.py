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
	r = requests.get("https://api.themoviedb.org/3/movie/now_playing?api_key=35bcc7d68551a6d39bc6bef1847e87b5&language=es-ES")
	js=json.loads(r.text)
	return template("html/cartelera.tpl",js=js)

@route('/titulo')
def titulo():
    return template('html/titulo.tpl')
    
@route('/titulo',method="post")
def titulo2():
    para1=str(request.forms.get('titulo'))
    para2=str(request.forms.get('tipo'))
    if para2 == "serie":
        redirect("/serie")
    else:
        redirect("/pelicula")

@route('/serie') 
def serie():
	r = requests.get("http://api.themoviedb.org/3/search/movie?query=doctor&api_key=35bcc7d68551a6d39bc6bef1847e87b5&language=es-ES")
	js=json.loads(r.text)
	return template("html/serie.tpl",js=js)

@route('/pelicula') 
def pelicula():
	r = requests.get("http://api.themoviedb.org/3/search/movie?query=potter&api_key=35bcc7d68551a6d39bc6bef1847e87b5&language=es-ES")
	js=json.loads(r.text)
	return template("html/pelicula.tpl",js=js)

@route('/style/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='html/style')

run(host='0.0.0.0', port=8081)
#run(host='0.0.0.0', port=argv[1])
