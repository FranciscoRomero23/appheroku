<!DOCTYPE html>
<html lang="es">
<html>
<head>
<link href="/style/style.css" rel="stylesheet" />
<link rel="icon" type="image/png" href="/style/images/favicon.png" />
<title>Videos con '{{q}}'</title>
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
<h1>Videos sobre '{{q}}':</h1>
<table border=0>
	%for id,video in zip(lista_ids,titulos_videos):
<tr>		
    	<th>  
		<h2>{{video}}</h2></li>
		</th>
<tr></tr>
    	<th>
		<iframe width="600" height="400" src="https://www.youtube.com/embed/{{id}}" frameborder="0" allowfullscreen></iframe></li> 
		</th> 
</tr>
	%end
</table>
</article>

<footer>Copyright &copy; Francisco José Romero Morillo, 2017</footer>

</div>
 
</body>
</html>




