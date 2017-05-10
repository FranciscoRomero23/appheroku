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
<a class="boton_personalizado" href="/cartelera">Cartelera</a>
<a class="boton_personalizado" href="#">Titulos</a>
<a class="boton_personalizado" href="#">Generos</a>
<a class="boton_personalizado" href="#">Actores</a>
<a class="boton_personalizado" href="#">Videos</a>
</nav>


<article>
<h1>Cartelera</h1>
<table style="width:100%">
	% for i in js["results"]:
	<tr>
    <th>   
    	<h2>{{i["title"]}}</h2>
   	<h3>{{i["release_date"]}}</h3>
   	<p>Sinopsis: {{i["overview"]}}</p>
    </th>
    <th><img src="https://image.tmdb.org/t/p/w500{{i["poster_path"]}}"></th> 
   </tr>
</table> 
	%end
</article>

<footer>Copyright &copy; Francisco Romero</footer>

</div>
 
</body>
</html>




