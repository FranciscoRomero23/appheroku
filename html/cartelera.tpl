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
     			Fecha de estreno: {{i["release_date"]}} &nbsp&nbsp&nbsp&nbsp 
     			
   				<form id="formulario" action="twittear" method="post">
   				<select id="nota" name="nota">
	 					<option value="" selected="seleccion">Nota</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
					</select>
					</form>
					
					<a href="/twittear/{{i["title"]}}/{{nota}}"><input style="background-color: #FF9900;font-family: times;font-size: 20px" type="button" value="¡Me gusta!" name="¡Me gusta!" /></a>
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
	%if paginas>int(1):
	%	if int(numero)==int(paginas):
	%		Anterior=int(numero)-int(1)
			<a href="/cartelera/{{Anterior}}"><input style="background-color: #FF9900" type="button" value="<" name="<" /></a>
	%	elif numero=="1":
	%		Siguiente=int(numero)+int(1)
			<a href="/cartelera/{{Siguiente}}"><input style="background-color: #FF9900" type="button" value=">" name=">" /></a>
	%	else:
	%		Siguiente=int(numero)+int(1)
	%		Anterior=int(numero)-int(1)
			<a href="/cartelera/{{Anterior}}"><input style="background-color: #FF9900" type="button" value="<" name="<" /></a>
			<a href="/cartelera/{{Siguiente}}"><input style="background-color: #FF9900" type="button" value=">" name=">" /></a>
	%end
	</th>
	</tr>
</table>
</nav>
<footer>Copyright &copy; Francisco José Romero Morillo, 2017</footer>

</div>
 
</body>
</html>




