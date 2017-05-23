# -*- coding: utf-8 -*-
from bottle import route, run, request, template, static_file, redirect,error,get,response
import requests
from requests_oauthlib import OAuth1
from urlparse import parse_qs
from sys import argv
import json
import os

REQUEST_TOKEN_URL = "https://api.twitter.com/oauth/request_token"
AUTHENTICATE_URL = "https://api.twitter.com/oauth/authenticate?oauth_token="
ACCESS_TOKEN_URL = "https://api.twitter.com/oauth/access_token"

CONSUMER_KEY = os.environ.get('consumer_key')
CONSUMER_SECRET = os.environ.get('consumer_secret')

TOKENS = {}

def get_request_token():
    oauth = OAuth1(CONSUMER_KEY,
                   client_secret=CONSUMER_SECRET,
    )
    r = requests.post(url=REQUEST_TOKEN_URL, auth=oauth)
    credentials = parse_qs(r.content)
    TOKENS["request_token"] = credentials.get('oauth_token')[0]
    TOKENS["request_token_secret"] = credentials.get('oauth_token_secret')[0]

def get_access_token(TOKENS):
    oauth = OAuth1(CONSUMER_KEY,
                   client_secret=CONSUMER_SECRET,
                   resource_owner_key=TOKENS["request_token"],
                   resource_owner_secret=TOKENS["request_token_secret"],
                   verifier=TOKENS["verifier"],)
    r = requests.post(url=ACCESS_TOKEN_URL, auth=oauth)
    credentials = parse_qs(r.content)
    print credentials
    TOKENS["access_token"] = credentials.get('oauth_token')[0]
    TOKENS["access_token_secret"] = credentials.get('oauth_token_secret')[0]


@route('/',method="post")
@route('/')
def inicio():
	cont=0
	get_request_token()
	authorize_url = AUTHENTICATE_URL + TOKENS["request_token"]
	response.set_cookie("request_token", TOKENS["request_token"],secret='some-secret-key')
	response.set_cookie("request_token_secret", TOKENS["request_token_secret"],secret='some-secret-key')
	if request.get_cookie("access_token", secret='some-secret-key'):
		cont=1
	else:
		cont=0
	return template('html/plantilla.tpl',authorize_url=authorize_url,cont=cont)
    
@route('/cartelera/<num>') 
def cartelera(num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","region":"ES","page":num}
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
	r = requests.get("https://api.themoviedb.org/3/search/tv",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/tituloserie.tpl",js=js,numero=num,paginas=total,titulo=titulo)

@route('/titulo/pelicula/<titulo>/<num>') 
def titulopelicula(titulo,num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","query":titulo,"page":num}
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
	for num in range(1,967):
		payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","region":"ES","page":num}
		r = requests.get("https://api.themoviedb.org/3/person/popular",params=payload)
		js=json.loads(r.text)
		for i in js["results"]:
			if para3==i["name"]:
				ide=i["id"]
				nombre=i["name"]
				redirect("/actor/pelicula/%s/%s/1"%(ide,nombre))

@route('/actor/pelicula/<ident>/<nombre>/<num>') 
def actorpelicula(ident,nombre,num="1"):
	payload={"api_key":os.environ["key_tmdb"],"language":"es-ES","with_people":ident,"page":num}
	r = requests.get("https://api.themoviedb.org/3/discover/movie",params=payload)
	js=json.loads(r.text)
	total=js["total_pages"]
	return template("html/actorpelicula.tpl",js=js,numero=num,paginas=total,ident=ident,nombre=nombre)
	
@route('/videos',method="get")
def video():
    return template('html/video.tpl')
    
@route('/videoresultado',method="post")
def videoresultado():
    maxResults = request.forms.get('maxResults')
    q = request.forms.get('q')
    lista_ids = []
    titulos_videos = []
    keyvideo = os.environ["key_youtube"]
    payload2 = {"part":"snippet","ForMine":"true","maxResults":maxResults,"q":q,"type":"video","key":keyvideo}
    r2 = requests.get('https://www.googleapis.com/youtube/v3/search?',params=payload2)
    videos = r2.text
    busquedavideo = json.loads(videos)
    if r2.status_code == 200:
        for video in busquedavideo["items"]:
            lista_ids.append(video["id"]["videoId"])
        for video2 in busquedavideo["items"]:
            titulos_videos.append(video2["snippet"]["title"])
        return template("html/videoresultados.tpl",q=q,lista_ids=lista_ids,titulos_videos=titulos_videos)
    else:
        return template("html/error.tpl")

@get('/twittear/<valorado>')
def twittear(valorado):
    if request.get_cookie("access_token", secret='some-secret-key'):
      TOKENS["access_token"]=request.get_cookie("access_token", secret='some-secret-key')
      TOKENS["access_token_secret"]=request.get_cookie("access_token_secret", secret='some-secret-key')
      print CONSUMER_KEY
      print CONSUMER_SECRET
      print TOKENS["access_token"]
      print TOKENS["access_token_secret"]
      oauth = OAuth1(CONSUMER_KEY,
                       client_secret=CONSUMER_SECRET,
                       resource_owner_key=TOKENS["access_token"],
                       resource_owner_secret=TOKENS["access_token_secret"])
      url = 'https://api.twitter.com/1.1/statuses/update.json'
      status = 'Me ha gustado %s. via themediafinder.herokuapp.com'%valorado
      r = requests.post(url=url,data={"status":status},auth=oauth)
      if r.status_code == 200:
        return """<h2>Tweet Enviado Corrrectamente</h2>"""
      else:
        return """<h2>Tu Tweet no fue enviado algo pasó</h2>"""
    else:
      redirect('/')
     
@get('/callback')
def get_verifier():
    print TOKENS
    TOKENS["verifier"] = request.query.oauth_verifier
    get_access_token(TOKENS)
    response.set_cookie("access_token", TOKENS["access_token"],secret='some-secret-key')
    response.set_cookie("access_token_secret", TOKENS["access_token_secret"],secret='some-secret-key')
    redirect('/')

@get('/twitter_logout')
def twitter_logout():
  response.set_cookie("access_token", '',max_age=0)
  response.set_cookie("access_token_secret", '',max_age=0)
  redirect('/')
    
@error(500)
def error500(error):
    return template('html/error.tpl')

@route('/style/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='html/style')

run(host='0.0.0.0', port=argv[1])