# Markdown

Es un lenguaje de marcado ligero que permite dar formato a texto plano de manera sencilla y legible. 

Su ventaja principal es que es fácil de leer y escribir, sin necesidad de conocer HTML o herramientas complejas.

#### Utilizado para:

* Documentación técnica

* Archivos README en proyectos

* Blogs y páginas web estáticas

* Apuntes y notas

* Publicaciones en GitHub, GitLab, foros técnicos, etc.

## Ejemplos de Sintaxis
***
***




<!-- Esto es un comentario -->

# Esto es un encabezado H1

## Esto es un encabezado H2

### Esto es un encabezado H3

#### Esto es un encabezado H4°

##### Esto es un encabezado H5

Esto es un texto en _italicas_

_Esto es un texto en italicas_

Esto es un texto en *italicas*

*Esto es un texto en italicas*

Esto es un texto en **negritas**

**Esto es un texto en negritas**

Esto es un texto en __negritas__  <!-- doble guion bajo -->

__Esto es un texto en negritas__

Este `es un tecto que puede ser código` este es un texto 
~~tachado~~
~~texto tachado~~

* Elemento 1
* Elemento 2
* Elemento 3
  * Elemento 3.1
  * Elemento 3.2
    * Elemento 3.2.1
* Elemento 4

- Elemento 1
- Elemento 2
- Elemento 3
  - Elemento 3.1
  - Elemento 3.2
    - Elemento 3.2.1
- Elemento 4

1. Elemento 1
1. Elemento 2
1. Elemento 3
  1. Elemento 3.1
  1. Elemento 3.2
2. Elemento 4

[Texto de enlace](http://www.google.com "Texto del tooltip")

[UABC](http://www.uabc.mx)

![Texto alternativo](image.png)

![alt text](image-1.png "bananín tooltip")

```txt
This is un code block
This is the second line of the code block
```

```python
printf("Hola mundo!")
```

<!-- Tablas -->

| Productos | Precio | Cantidad |
| - | - | - |
| Laptotp | 3.3 | 2 |
| Mouse | 13.3 | 1 |

<!-- Notas -->

> Esto es una nota

<!-- Tareas -->
* [x] Primera tarea
* [ ] Segunda tarea
* [x] Tercera tarea
* [ ] Cuarta tarea

<!-- Divisiores horizontales -->
***
---
___

<!-- Menciones y emojis -->

@troymoreno :+1: :smile: 


# Git
Es un sistema de control de versiones que permite guardar, organizar y controlar los cambios realizados en los archivos de un proyecto. Facilita el trabajo en equipo, el seguimiento del historial de cambios y la recuperación de versiones anteriores.

# GitHub

Es una plataforma en línea que permite almacenar repositorios Git en la nube, compartir proyectos y colaborar con otros desarrolladores. Funciona como un respaldo y un punto central para el trabajo colaborativo.

## ¿Cómo se utilizan?

Se trabaja de manera local con Git para guardar cambios y, posteriormente, se suben los archivos a GitHub para almacenarlos y compartirlos. El flujo básico consiste en modificar archivos, registrarlos con Git y sincronizarlos con GitHub.

## Comandos esenciales de Git

* __git init__ → Inicializa un repositorio.

* __git status__ → Muestra el estado de los archivos.

* __git add .__ → Agrega archivos al área de preparación.

* __git commit__ -m "mensaje" → Guarda los cambios.

* __git push__ → Sube los cambios a GitHub.

* __git pull__ → Descarga cambios desde GitHub.

# Hugo
Es un generador de sitios web estáticos muy rápido. Permite crear páginas web a partir de archivos Markdown.

# GitHub Actions

Es un sistema de automatización que permite ejecutar procesos automáticos, como:

* Compilar proyectos

* Ejecutar pruebas

* Publicar sitios web automáticamente

Se usa para automatizar el despliegue de un sitio Hugo en GitHub Pages.