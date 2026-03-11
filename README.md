# Compilador en Java con JFlex y CUP

Proyecto desarrollado en **Java** que implementa la generación de un compilador utilizando herramientas de análisis léxico y sintáctico como **JFlex** y **Java CUP**.

## Descripción

El programa se encarga de generar automáticamente el **analizador léxico (lexer)** y el **analizador sintáctico (parser)** a partir de archivos de definición `.flex`.

El archivo `Principal.java` ejecuta el proceso de generación del compilador y organiza los archivos resultantes dentro del proyecto.

## Funcionalidades

* Generación del **analizador léxico** con JFlex.
* Generación del **analizador sintáctico** con Java CUP.
* Automatización del proceso de construcción del compilador.
* Organización automática de archivos generados dentro del proyecto.

## Tecnologías utilizadas

* Java
* JFlex
* Java CUP

## Estructura del proyecto

```id="s1n8qk"
compilador
 ├── src
 │   └── codigo
 │       ├── Principal.java
 │       ├── Lexer.flex
 │       ├── LexerCup.flex
 │       ├── Sintax.java
 │       └── sym.java
```

## Funcionamiento

El programa toma como entrada los archivos que definen la gramática y reglas léxicas.
Posteriormente ejecuta **JFlex y Java CUP** para generar automáticamente los archivos necesarios para el compilador.

## Autor

Ian Marcel Castrejón Cuevas
Ingeniería en Sistemas Computacionales
