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
<article>
<h1><strong>Los resultados encontrados sobre la búsqueda {{q}} son:</strong></h1>

	%for id,video in zip(lista_ids,titulos_videos):
	<ul>
	<li><h2>{{video}}</h2></li>
   <li><iframe width="600" height="400" src="https://www.youtube.com/embed/{{id}}" frameborder="0" allowfullscreen></iframe></li> 
	</ul>
	%end
</article>

<footer>Copyright &copy; Francisco José Romero Morillo, 2017</footer>

</div>
 
</body>
</html>




