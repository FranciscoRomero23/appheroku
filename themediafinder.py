# -*- coding: utf-8 -*-
from bottle import route, run, request, template, static_file, redirect
from sys import argv

@route('/')
def inicio():
    return template('static/plantilla.tpl')

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')

run(host='0.0.0.0', port=8081)
