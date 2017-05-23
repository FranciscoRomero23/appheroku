<!DOCTYPE html>
<html lang="es">
<html>
<head>
<link href="/style/style.css" rel="stylesheet" />
<link rel="icon" type="image/png" href="/style/images/favicon.png" />
<title>Inicio</title>
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
  <h1>El buscador</h1>
  <p>Bienvenido a The Media Finder, una aplicaci&oacute;n web en la que podr&aacute;s buscar informaci&oacute;n sobre pel&iacute;culas y series de tv.</p>
  <p>Puedes ver las pel&iacute;culas que hay en cartelera en este momento, buscar informaci&oacute;n sobre pel&iacute;culas o series de tv (buscando 
  por titulo, genero o actor) y puedes buscar v&iacute;deos sobre la pel&iacute;cula o serie que te interesa ver.</p>
  <p>Además podras conectarte a Twitter y tuitear las peliculas y series que más te gusten.</p>
  <p>Esta aplicaci&oacute;n usa las APIs de The Movie Database y Youtube.</p>
</article>
% if cont == 1:
	<center>
	<h3>Conectado a Twitter</h3>
	<img src="style/images/twitter.png" style="height:70px">
	<a href="/twitter_logout"><h3>Desconectar</h3></a>
	</center>
% else:
	<center>
	<a class="boton_twitter" href="{{authorize_url}}">¡Conectate a Twitter!</a>
	<img src="style/images/twitter.png" style="height:70px">
	</center>
% end
<footer>Copyright &copy; Francisco José Romero Morillo, 2017</footer>

</div>

</body>
</html>
