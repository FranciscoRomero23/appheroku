<!DOCTYPE html>
<html lang="es">
<html>
<head>
<link href="/style/style.css" rel="stylesheet" />
<link rel="icon" type="image/png" href="/style/images/favicon.png" />
<title>Cartelera</title>
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
<h1>Cartelera</h1>
<table border=0>
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
	Actualmente en la página: {{i}} de {{paginas}}
	%if i=="1":
		<a href="/cartelera/{{i+1}}"><input style="background-color: #FF9900" type="button" value={{i+1}} name="Página siguiente" /></a>
	%elif i==paginas:
		<a href="/cartelera/{{i-1}}"><input style="background-color: #FF9900" type="button" value={{i-1}} name="Página anterior" /></a>
	%else:
		<a href="/cartelera/{{i-1}}"><input style="background-color: #FF9900" type="button" value={{i-1}} name="Página anterior" /></a>
		<a href="/cartelera/{{i+1}}"><input style="background-color: #FF9900" type="button" value={{i+1}} name="Página siguiente" /></a>
	%end

</nav>





<footer>Copyright &copy; Francisco José Romero Morillo, 2017</footer>

</div>
 
</body>
</html>




