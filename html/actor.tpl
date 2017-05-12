<!DOCTYPE html>
<html lang="es">
<html>
<head>
<link href="/style/style5.css" rel="stylesheet" />
</head>
<body>

<div class="container">

<header>
   <h1>The Media Finder</h1>
</header>
<nav>
<a class="boton_personalizado" href="/">Inicio</a>
<a class="boton_personalizado" href="/cartelera">Cartelera</a>
<a class="boton_personalizado" href="/titulo">Titulos</a>
<a class="boton_personalizado" href="/genero">Generos</a>
<a class="boton_personalizado" href="/actor">Actores</a>
<a class="boton_personalizado" href="/videos">Videos</a>
</nav>


<article>
<h1>Búsqueda por actor</h1>
<form id="formulario" action="titulo" method="post">
<h2>Genero:</h2>
<select id="tipo" name="genero">
 <option value="" selected="seleccion">Buscar por</option>
 <option value="1">Terror</option>
 <option value="2">Acción</option>
 <option value="3">Aventura</option>
 <option value="4">Ciencia Ficcion</option>
 </select>
<h2>Tipo</h2>
<select id="tipo" name="tipo">
 <option value="" selected="seleccion">Buscar por</option>
 <option value="serie">Serie</option>
 <option value="pelicula">Pelicula</option>
 </select><br><br>
 <input type="submit" name="buscar" value="Buscar" class="buscar" />
</form>
<p>En esta pagina de The Media Finder podrás buscar series o películas dependiendo del genero que tengan.</p> 
</article>

<footer>Copyright &copy; Francisco Romero</footer>

</div>
 
</body>
</html>




