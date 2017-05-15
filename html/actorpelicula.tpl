<!DOCTYPE html>
<html lang="es">
<html>
<head>
<link href="/style/style.css" rel="stylesheet" />
</head>
<body>

<div class="container">

<header>
   <h1>The Media Finder</h1>
</header>
<nav>
<a class="boton_personalizado" href="/">Inicio</a>
<a class="boton_personalizado" href="/cartelera/1">Cartelera</a>
<a class="boton_personalizado" href="/titulo">Titulos</a>
<a class="boton_personalizado" href="/genero">Generos</a>
<a class="boton_personalizado" href="/actor">Actores</a>
<a class="boton_personalizado" href="/videos">Videos</a>
</nav>


<article>
<h1>Peliculas de </h1>
<table border=0 >
	% for i in js["results"]:
	<tr>		
    		<th>   
    			<h2>{{i["title"]}}</h2>
   			Fecha de estreno: {{i["release_date"]}}
   			<p>{{i["overview"]}}</p>
    		</th>
    		<th>
			<img src="https://image.tmdb.org/t/p/w500{{i["poster_path"]}}">
		</th> 
	</tr>
	%end
</table> 
</article>
<nav>
	% for i in range(paginas):
	<a class="boton_pagina" href="/actor/pelicula/{{i+1}}">{{i+1}}</a>
	%end
</nav>

<footer>Copyright &copy; Francisco José Romero Morillo, 2017</footer>

</div>
 
</body>
</html>




