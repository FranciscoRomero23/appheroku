# -*- coding: utf-8 -*-
from bottle import route, run,static_file

@route("/inicio")
@route('/')
def inicio():
    return template('html/plantilla.tpl')

run(host='0.0.0.0', port=argv[1])
