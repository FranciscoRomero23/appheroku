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
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","region":"ES","page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","region":"ES","page":num}
	r = requests.get("https://api.themoviedb.org/3/movie/now_playing",params=payload)
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
        redirect("/titulo/serie/1")
    else:
        redirect("/titulo/pelicula/1")

@route('/titulo/serie/<num>') 
def tituloserie(num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","query":"doctor","page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","query":"doctor","page":num}
	r = requests.get("https://api.themoviedb.org/3/search/tv",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/tituloserie.tpl",js=js,numero=num,paginas=total)

@route('/titulo/pelicula/<num>') 
def titulopelicula(num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","query":"potter","page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","query":"potter","page":num}
	r = requests.get("https://api.themoviedb.org/3/search/movie",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/titulopelicula.tpl",js=js,numero=num,paginas=total)

@route('/genero')
def genero():
    return template('html/genero.tpl')
    
@route('/genero',method="post")
def genero2():
    para3=str(request.forms.get('genero'))
    para4=str(request.forms.get('tipo'))
    if para4 == "serie":
        redirect("/genero/serie/1")
    else:
        redirect("/genero/pelicula/1")

@route('/genero/serie/<num>') 
def generoserie(num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","with_genres":16,"page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","with_genres":18,"page":num}
	r = requests.get("https://api.themoviedb.org/3/discover/tv",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/generoserie.tpl",js=js,numero=num,paginas=total)

@route('/genero/pelicula/<num>') 
def generopelicula(num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","with_genres":16,"page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","with_genres":16,"page":num}
	r = requests.get("https://api.themoviedb.org/3/discover/movie",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/generopelicula.tpl",js=js,numero=num,paginas=total)

@route('/actor')
def actor():
    return template('html/actor.tpl')
    
@route('/actor',method="post")
def actor2():
    para1=str(request.forms.get('genero'))
    para2=str(request.forms.get('tipo'))
    if para2 == "serie":
        redirect("/actor/serie/1")
    else:
        redirect("/actor/pelicula/1")
        
@route('/actor/serie/<num>') 
def actorserie(num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","with_people":71580,"page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","with_people":71580,"page":num}
	r = requests.get("https://api.themoviedb.org/3/discover/tv",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/actorserie.tpl",js=js,numero=num,paginas=total)

@route('/actor/pelicula/<num>') 
def actorpelicula(num="1"):
	#payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","with_people":71580,"page":num}
	payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","with_people":71580,"page":num}
	r = requests.get("https://api.themoviedb.org/3/discover/movie",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/actorpelicula.tpl",js=js,numero=num,paginas=total)

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

@route('/style/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='html/style')

#run(host='0.0.0.0', port=8081)
run(host='0.0.0.0', port=argv[1])
