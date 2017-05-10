# -*- coding: utf-8 -*-
from bottle import route, run, request, template, static_file, redirect
from sys import argv
import requests
import json

@route('/')
def inicio():
    return template('html/plantilla.tpl')

@route('/style/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='html/style')

#run(host='0.0.0.0', port=8081)
run(host='0.0.0.0',port=argv[1])
