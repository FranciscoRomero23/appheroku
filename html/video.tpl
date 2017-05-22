<!DOCTYPE html>
<html lang="es">
<html>
<head>
<link href="/style/style.css" rel="stylesheet" />
<link rel="icon" type="image/png" href="/style/images/favicon.png" />
<title>Videos</title>
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
<h1>Búsqueda de videos en Youtube:</h1>
<table border=0>
<form id="formulario" action="videoresultado" method="post">
<tr>		
<td>  
<h2>Video:</h2>
<input type="text" name="q"/>
	<br/><br/>
<strong><label for='maxResults'>Límite De Resultados</label></strong>
	<select id='maxResults' name='maxResults'>
		<option value="" selected="selected">-	Selecciona   -</option>										
		<option value="5">5 resultados</option>
		<option value="10">10 resultados</option>
		<option value="15">15 resultados</option>
		<option value="20">20 resultados</option>
	</select>
	<br/><br/>
<strong><label for='order'>Orden De Resultados</label></strong>
	<select id='order' name='order'>
		<option value="" selected="selected">-	Selecciona   -</option>										
		<option value='date'>Fecha</option>
		<option value='relevance'>Relevancia</option>
    	<option value='viewCount'>Conteo De Visitas</option>
	</select>
</td>
<tr>
<td COLSPAN=2>
 <input type="submit" name="buscar" value="Buscar" class="buscar" />
</td> 
</tr>
</form>
</table>

<p>En esta página de The Media Finder podrás buscar vídeos sobre la película o serie que te interesa ver.</p>
</article>

<footer>Copyright &copy; Francisco José Romero Morillo, 2017</footer>

</div>
 
</body>
</html>




