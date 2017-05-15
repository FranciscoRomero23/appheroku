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
<h1>Búsqueda por genero</h1>
<form id="formulario" action="genero" method="post">
<h2>Genero:</h2>
<select id="tipo" name="genero">
 <option value="" selected="seleccion">Buscar por</option>
 <option value="28">Acción</option>
 <option value="12">Aventura</option>
 <option value="16">Animación</option>
 <option value="35">Comedia</option>
 <option value="80">Crimen</option>
 <option value="99">Documental</option>
 <option value="18">Drama</option>
 <option value="10751">Familia</option>
 <option value="14">Fantasía</option>
 <option value="36">Historia</option>
 <option value="27">Terror</option>
 <option value="10402">Música</option>
 <option value="9648">Misterio</option>
 <option value="10749">Romance</option>
 <option value="878">Ciencia ficción</option>
 <option value="10770">TV</option>
 <option value="53">Suspense</option>
 <option value="10752">Guerra</option>
 <option value="37">Western</option>
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

<footer>Copyright &copy; Francisco José Romero Morillo, 2017</footer>

</div>
 
</body>
</html>




