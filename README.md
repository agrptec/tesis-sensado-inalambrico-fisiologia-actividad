# Gemelo digital de radiofrecuencia mediante representaciones neuronales

Repositorio del manuscrito doctoral sobre modelado espacial de canales inalámbricos y construcción de gemelos digitales de radiofrecuencia. La investigación estudia qué representación geométrica, electromagnética y neuronal permite predecir de forma físicamente consistente la respuesta compleja del canal en posiciones no observadas.

El documento conecta fundamentos de propagación multitrayectoria, estimación de canal, aprendizaje profundo e inferencia sobre nubes de puntos. La metodología se organiza como una secuencia de hipótesis falsables: comienza con el diagnóstico de modelos de canal en distintos escenarios, separa el aprendizaje de magnitud y fase, mide la información realmente aportada por la geometría y conduce hacia modelos híbridos con sesgos inductivos físicos.

## Estado de la investigación

El manuscrito incorpora el primer corte experimental y su interpretación metodológica. Entre los resultados documentados se encuentran:

- líneas base y ablaciones para establecer cuánto puede inferirse a partir de posición, frecuencia y geometría;
- experimentos S4.1--S4.6d.2 sobre magnitud, fase, generalización espacial y sensibilidad a la representación geométrica;
- análisis de la fase como variable circular y de su sensibilidad a errores pequeños en la longitud de trayectoria;
- discusión de los límites de una nube de puntos estática para representar los mecanismos electromagnéticos que determinan el canal complejo;
- reformulación de los siguientes experimentos hacia representaciones multiescala, pérdidas coherentes con señales complejas y modelos híbridos guiados por física.

Los experimentos posteriores que aparecen en la metodología constituyen trabajo planificado. El repositorio contiene el manuscrito y su bibliografía; los conjuntos de datos y el código de entrenamiento no forman parte todavía de esta distribución.

## Estructura

```text
.
├── main.tex                    # Documento maestro
├── capitulos/                  # Capítulos modulares de la tesis
├── preliminares/               # Portada, resúmenes y notación
├── configuracion/preambulo.tex # Paquetes y configuración tipográfica
├── references.bib              # Bibliografía consolidada
├── compile.sh                  # Compilación reproducible
├── .latexmkrc                  # Configuración de latexmk
└── main.pdf                    # Versión compilada del manuscrito
```

## Requisitos

Se necesita una distribución de LaTeX que incluya `latexmk`, `pdflatex`, BibTeX y MakeIndex. En macOS puede utilizarse MacTeX; en Linux, una instalación suficientemente completa de TeX Live.

## Compilación local

Desde la raíz del repositorio:

```sh
chmod +x compile.sh
./compile.sh
```

El script ejecuta `latexmk` con detención ante errores. Los archivos auxiliares se guardan en `.build/` y el resultado se escribe como `main.pdf` en la raíz.

El comando equivalente es:

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

La configuración de `latexmk` resuelve las pasadas necesarias de bibliografía, índices y referencias cruzadas. Para compilar en Overleaf, se debe cargar la estructura completa y seleccionar `main.tex` como documento principal.

## Lectura del manuscrito

La versión compilada está disponible en [main.pdf](main.pdf). El orden de inclusión de capítulos y la arquitectura completa del documento se encuentran en [main.tex](main.tex).

## Historial

Este repositorio se creó a partir de una versión de trabajo que no conservaba metadatos de Git. Por ello, los primeros commits reconstruyen hitos temáticos del estado actual —manuscrito, sistema de compilación, documentación y PDF— y no pretenden reproducir la cronología exacta de todos los experimentos realizados.
