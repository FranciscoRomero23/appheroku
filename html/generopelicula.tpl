<!DOCTYPE html>
<html lang="es">
<html>
<head>
<link href="/style/style.css" rel="stylesheet" />
<link rel="icon" type="image/png" href="/style/images/favicon.png" />
<title>Películas de {{nombre}}</title>
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
<h1>Peliculas de {{nombre}}</h1>
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
<table border=0>
<tr>		
   <th WIDTH="400"> 
	<p>Actualmente en la página: {{numero}} de {{paginas}}</p>
	</th>
	<th WIDTH="400"> 
	%if paginas>=int(1):
	%	if int(numero)==int(paginas):
	%		Anterior=int(numero)-int(1)
			<a href="/genero/pelicula/{{genero}}/{{Anterior}}"><input style="background-color: #FF9900" type="button" value="<" name="<" /></a>
	%	elif numero=="1":
	%		Siguiente=int(numero)+int(1)
			<a href="/genero/pelicula/{{genero}}/{{Siguiente}}"><input style="background-color: #FF9900" type="button" value=">" name=">" /></a>
	%	else:
	%		Siguiente=int(numero)+int(1)
	%		Anterior=int(numero)-int(1)
			<a href="/genero/pelicula/{{genero}}/{{Anterior}}"><input style="background-color: #FF9900" type="button" value="<" name="<" /></a>
			<a href="/genero/pelicula/{{genero}}/{{Siguiente}}"><input style="background-color: #FF9900" type="button" value=">" name=">" /></a>
	%end
	</th>
	</tr>
</table>
</nav>


<footer>Copyright &copy; Francisco José Romero Morillo, 2017</footer>

</div>
 
</body>
</html>




