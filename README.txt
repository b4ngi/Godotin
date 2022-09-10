Version de godot: Godot_v3.5

Repositorio: https://github.com/b4ngi/Godotin.git
	- Hasta el commit "Guardar y cargar datos de juego y configuracion" es el contenido puramente del curso. De ese commit en adelante son agregados y funcionalidades extras.


Consideraciones del juego:

- Siempre que no exista el archivo "datos_juego.tres" en la carpeta "guardado", el boton de Cargar en el menu principal(MenuInicio.tscn) va a estar desabilitado. Si existe dicho archivo, el boton se habilita y se puede cargar la partida con los datos del juego que se guardaron anteriormente.

- Si se inicia una nueva partida(boton Nuevo en MenuInicio.tscn) y existian datos guardados de alguna partida anterior, estos datos se borran automaticamente para guardar los datos de la nueva partida iniciada.

--> Los datos del juego se guardan al iniciar por primera vez un nivel. (Nivel.gd -> ready())
--> Al finalizar un nivel, se muestra el menu intermedio (MenuIntermedio.tscn), y se pasa a la pantalla de carga donde se realiza la transición al siguiente nivel.
--> La pantalla de carga realiza la carga en segundo plano del nuevo nivel y una vez finalizada permite iniciar el nuevo nivel.

Agregados:
	- Menu de pausa funcional --> Continuar, volver al menu, salir.
	- Menu de game over funcional --> Reintentar(se resetean las vidas y los puntos, pero se sigue en el mismo nivel en el que se perdió).
	- Pantalla de carga: Tips aleatorios, mensaje de carga completa titilando.
	- Mostar numero de nivel actual al iniciar por primera vez un nivel.

Bugs:
	- Existen bugs con la camara en algunos niveles.
	- Existen bugs con el guardado y cargado de datos en algunos casos.

Aclaraciones
	- Los diseños y estilos de los menus son muy basicos -> Mejorarlos en versiones posteriores.