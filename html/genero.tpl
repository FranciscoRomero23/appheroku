<!DOCTYPE html>
<html lang="es">
<html>
<head>
<link href="/style/style.css" rel="stylesheet" />
<link rel="icon" type="image/png" href="/style/images/favicon.png" />
<title>Generos</title>
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
<table border=0>
<form id="formulario" action="genero" method="post">
<tr>		
<td> 
<h2>Tipo</h2>
<select id="tipo" name="tipo">
<option value="" selected="seleccion">Buscar por</option>
<option value="serie">Serie</option>
<option value="pelicula">Pelicula</option>
</select>
</td>
<td>
<h2>Genero:</h2>
<select id="genero" name="genero">
 <option value="" selected="seleccion">Buscar por</option>
 <option value="28">Acción (Películas)</option>
 <option value="12">Aventura (Películas)</option>
 <option value="10759">Acción y Aventura (Series)</option>
 <option value="16">Animación</option>
 <option value="35">Comedia</option>
 <option value="80">Crimen</option>
 <option value="99">Documental</option>
 <option value="18">Drama</option>
 <option value="10751">Familia</option>
 <option value="14">Fantasía (Películas)</option>
 <option value="36">Historia (Películas)</option>
 <option value="27">Terror (Películas)</option>
 <option value="10762">Niños (Series)</option>
 <option value="10402">Música (Películas)</option>
 <option value="9648">Misterio</option>
 <option value="10749">Romance (Películas)</option>
 <option value="878">Ciencia ficción (Películas)</option>
 <option value="10770">TV (Películas)</option>
 <option value="53">Suspense (Películas)</option>
 <option value="10752">Guerra (Películas)</option>
 <option value="10763">Noticias (Series)</option>
 <option value="10764">Reality (Series)</option>
 <option value="10765">Ciencia ficción y Fantasia (Series)</option>
 <option value="10766">Soap (Series)</option>
 <option value="10767">Talk (Series)</option>
 <option value="10768">Guerra y Politica (Series)</option>
 <option value="37">Western</option>
 </select>
</td>
<tr>
<td COLSPAN=2>
 <input type="submit" name="buscar" value="Buscar" class="buscar" />
</td> 
</tr>
</form>
</table>
<p>En esta pagina de The Media Finder podrás buscar series o películas dependiendo del genero que tengan. Hay algunos géneros que son específicos
de series o películas (esta indicado junto al nombre del genero). Si elegís un genero que no vale, os mandara a una página de error.
</p> 
</article>

<footer>Copyright &copy; Francisco José Romero Morillo, 2017</footer>

</div>
 
</body>
</html>




