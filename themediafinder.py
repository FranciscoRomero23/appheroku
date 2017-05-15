# -*- coding: utf-8 -*-
from bottle import route, run, request, template, static_file, redirect
from sys import argv
import requests
import json
import os

@route('/')
def inicio():
    return template('html/plantilla.tpl')
    
@route('/cartelera/<num>') 
def cartelera(num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","region":"ES","page":num}
	r = requests.get("https://api.themoviedb.org/3/movie/now_playing",params=payload)
	#r = requests.get("https://api.themoviedb.org/3/movie/now_playing?api_key=35bcc7d68551a6d39bc6bef1847e87b5&language=es-ES&region=ES")
	js=json.loads(r.text)
	total=js["total_pages"]
        return template("html/cartelera.tpl",js=js,numero=num,paginas=total)

@route('/titulo')
def titulo():
    return template('html/titulo.tpl')
    
@route('/titulo',method="post")
def titulo2():
    para1=str(request.forms.get('title'))
    para2=str(request.forms.get('tipo'))
    if para2 == "serie":
        redirect("/titulo/serie")
    else:
        redirect("/titulo/pelicula")

@route('/genero')
def genero():
    return template('html/genero.tpl')
    
@route('/genero',method="post")
def genero2():
    para1=str(request.forms.get('genero'))
    para2=str(request.forms.get('tipo'))
    if para2 == "serie":
        redirect("/genero/serie")
    else:
        redirect("/genero/pelicula")

@route('/actor')
def actor():
    return template('html/actor.tpl')
    
@route('/actor',method="post")
def actor2():
    para1=str(request.forms.get('genero'))
    para2=str(request.forms.get('tipo'))
    if para2 == "serie":
        redirect("/genero/serie")
    else:
        redirect("/genero/pelicula")

@route('/videos')
def video():
    return template('html/video.tpl')
    
@route('/videos',method="post")
def video2():
    para1=str(request.forms.get('genero'))
    para2=str(request.forms.get('tipo'))
    if para2 == "serie":
        redirect("/genero/serie")
    else:
        redirect("/genero/pelicula")

@route('/titulo/serie') 
def tituloserie():
	r = requests.get("https://api.themoviedb.org/3/search/tv?api_key=35bcc7d68551a6d39bc6bef1847e87b5&language=es-ES&query=doctor")
	js=json.loads(r.text)
	return template("html/tituloserie.tpl",js=js)

@route('/titulo/pelicula') 
def titulopelicula():
	r = requests.get("http://api.themoviedb.org/3/search/movie?query=potter&api_key=35bcc7d68551a6d39bc6bef1847e87b5&language=es-ES")
	js=json.loads(r.text)
	return template("html/titulopelicula.tpl",js=js)

@route('/style/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='html/style')

#run(host='0.0.0.0', port=8081)
run(host='0.0.0.0', port=argv[1])
