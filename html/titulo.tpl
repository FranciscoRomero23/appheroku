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
<a class="boton_personalizado" href="/titulo">Titulos</a>
<a class="boton_personalizado" href="/genero">Generos</a>
<a class="boton_personalizado" href="/actor">Actores</a>
<a class="boton_personalizado" href="/videos">Videos</a>
</nav>


<article>
<h1>Búsqueda por titulo</h1>
<form id="formulario" action="titulo" method="post">
<h2>Titulo o palabra clave:</h2>
<input type="text" name="nombre"/>
<h2>Tipo</h2>
<select id="tipo" name="tipo">
 <option value="" selected="seleccion">Buscar por</option>
 <option value="serie">Serie</option>
 <option value="pelicula">Pelicula</option>
 </select><br><br>
 <input type="submit" name="buscar" value="Buscar" class="buscar" />
</form>
<p>En esta pagina de The Media Finder podrás buscar series o películas dependiendo del titulo que tengan. Puedes poner el titulo entero o poner una palabra clave para buscar.</p> 
</article>

<footer>Copyright &copy; Francisco Romero</footer>

</div>
 
</body>
</html>




