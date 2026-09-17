# Sensado inalámbrico pasivo de fisiología y actividad humana

Repositorio del manuscrito doctoral sobre la recuperación de patrones fisiológicos y de actividad física a partir de señales de radiofrecuencia generadas por infraestructura de comunicaciones existente.

La investigación estudia bajo qué condiciones el canal inalámbrico permite observar micro y macromovimientos humanos mediante Wi-Fi y LoRa. Para ello, integra fundamentos de propagación, modelado de canal, aprendizaje automático, estimación e incertidumbre.

## Objetivo

Desarrollar y validar un marco metodológico capaz de separar los efectos del entorno, la instrumentación y la configuración de radio de las perturbaciones asociadas con presencia, movimiento y respiración.

El gemelo digital inalámbrico se plantea como una herramienta para simular y calibrar el canal, introducir perturbaciones controladas y analizar la observabilidad antes de resolver el problema inverso de estimación del estado humano.

## Alcance

El manuscrito documenta experimentos iniciales de modelado del canal, predicción de magnitud, retardo y fase, así como su generalización espacial. Estos resultados sirven de base para los experimentos posteriores con movimiento controlado, respiración, múltiples personas y transferencia entre escenarios.

El trabajo no formula diagnósticos clínicos. La interpretación de indicadores de salud requiere validación experimental y fisiológica adicional.

## Estructura

```text
main.tex                     Documento maestro
capitulos/                   Capítulos de la tesis
preliminares/                Portada, resúmenes y notación
configuracion/preambulo.tex  Configuración de LaTeX
references.bib               Bibliografía
main.pdf                     Manuscrito compilado
```

## Compilación

Se requiere una distribución de LaTeX con `latexmk`, `pdflatex`, BibTeX y MakeIndex. Desde la raíz del repositorio:

```sh
./compile.sh
```

También puede ejecutarse directamente:

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

La versión actual del manuscrito se encuentra en [main.pdf](main.pdf).
