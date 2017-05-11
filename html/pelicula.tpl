<!DOCTYPE html>
<html lang="es">
<html>
<head>
<link href="/style/style2.css" rel="stylesheet" />
</head>
<body>

<div class="container">

<header>
   <h1>The Media Finder</h1>
</header>
<nav>
<a class="boton_personalizado" href="/">Inicio</a>
<a class="boton_personalizado" href="/cartelera">Cartelera</a>
<a class="boton_personalizado" href="/tipo">Titulos</a>
<a class="boton_personalizado" href="#">Generos</a>
<a class="boton_personalizado" href="#">Actores</a>
<a class="boton_personalizado" href="#">Videos</a>
</nav>


<article>
<h1>Peliculas que contienen 'Potter'</h1>
<table border=1 color=FACC2E>
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

<footer>Copyright &copy; Francisco Romero</footer>

</div>
 
</body>
</html>




