# -*- coding: utf-8 -*-
from bottle import route, run, request, template, static_file, redirect,error
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
        redirect("/titulo/serie/%s/1"%para1)
    else:
        redirect("/titulo/pelicula/%s/1"%para1)

@route('/titulo/serie/<titulo>/<num>') 
def tituloserie(titulo,num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","query":titulo,"page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","query":titulo,"page":num}
	r = requests.get("https://api.themoviedb.org/3/search/tv",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/tituloserie.tpl",js=js,numero=num,paginas=total,titulo=titulo)

@route('/titulo/pelicula/<titulo>/<num>') 
def titulopelicula(titulo,num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","query":titulo,"page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","query":titulo,"page":num}
	r = requests.get("https://api.themoviedb.org/3/search/movie",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/titulopelicula.tpl",js=js,numero=num,paginas=total,titulo=titulo)

@route('/genero')
def genero():
    return template('html/genero.tpl')
    
@route('/genero',method="post")
def genero2():
    para3=str(request.forms.get('tipo'))
    para4=str(request.forms.get('genero'))
    if para3 == "serie":
        redirect("/genero/serie/%s/1"%para4)
    else:
        redirect("/genero/pelicula/%s/1"%para4)

@route('/genero/serie/<genero>/<num>') 
def generoserie(genero,num="1"):
	generonumero=['10759','16','35','80','99','18','10751','10762','9648','10763','10764','10765','10766','10767','10768','37']
	generonombre=['Acción y Aventura','Animación','Comedia','Crimen','Documental','Drama','Familia','Niños','Misterio','Noticias','Reality','Sci-Fi y Fantasia','Soap','Talk','Guerra y Politica','Western']
	gen=generonumero.index(genero)	
	nombre=generonombre[gen]
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","with_genres":genero,"page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","with_genres":genero,"page":num}
	r = requests.get("https://api.themoviedb.org/3/discover/tv",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]

	return template("html/generoserie.tpl",js=js,numero=num,paginas=total,genero=genero,nombre=nombre)

@route('/genero/pelicula/<genero>/<num>') 
def generopelicula(genero,num="1"):
	generonumero=['28','12','16','35','80','99','18','10751','14','36','27','10402','9648','10749','878','10770','53','10752','37']
	generonombre=['Acción','Aventura','Animación','Comedia','Crimen','Documental','Drama','Familia','Fantasía','Historia','Terror','Música','Misterio','Romance','Ciencia ficción','Televisión','Suspense','Guerra','Western']
	gen=generonumero.index(genero)	
	nombre=generonombre[gen]
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","with_genres":genero,"page":num}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","with_genres":genero,"page":num}
	r = requests.get("https://api.themoviedb.org/3/discover/movie",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/generopelicula.tpl",js=js,numero=num,paginas=total,genero=genero,nombre=nombre)

@route('/actor')
def actor():
    return template('html/actor.tpl')

@route('/actor',method="post")
def actor2():
	para3=str(request.forms.get('actor'))
	para4=str(request.forms.get('tipo'))
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","region":"ES"}
	#payload={"api_key":"35bcc7d68551a6d39bc6bef1847e87b5","language":"es-ES","region":"ES","page":num}
	r = requests.get("https://api.themoviedb.org/3/person/popular",params=payload)
	js=json.loads(r.text)
	for i in js:
		if para3==i["name"]:
			return template('html/actorprueba.tpl',para3=para3)
		else:
			return template('html/error.tpl')
    

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

@error(500)
def error500(error):
    return template('html/error.tpl')

@route('/style/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='html/style')

#run(host='0.0.0.0', port=8081)
run(host='0.0.0.0', port=argv[1])
