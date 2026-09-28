# Gemelo digital inalámbrico para sensado humano

Manuscrito doctoral sobre modelado del canal, fidelidad diferencial y observabilidad para recuperar patrones fisiológicos y de actividad humana mediante infraestructura Wi-Fi y LoRa.

La investigación estudia bajo qué condiciones el canal inalámbrico permite observar micro y macromovimientos humanos mediante Wi-Fi y LoRa. Para ello, integra fundamentos de propagación, modelado de canal, aprendizaje automático, estimación e incertidumbre.

El gemelo inalámbrico se emplea para separar propagación, instrumentación y perturbaciones físicas, y para estudiar cuándo una representación conserva la sensibilidad necesaria para detectar movimiento y respiración. La evidencia actual comprende calibración estática, estructura de fase, representaciones relativas y límites de identificabilidad; la validación dinámica se realizará mediante perturbaciones físicas controladas.

## Estructura

```text
main.tex                     Documento maestro y cinco partes
capitulos/                   Quince capítulos científicos
preliminares/                Portada, resúmenes y notación global
docs/                        Mapa editorial y pendientes científicos
references.bib               Bibliografía
```

## Compilación

Se requiere una distribución de LaTeX con `pdflatex`, BibTeX y MakeIndex; `latexmk` es opcional. Desde la raíz del repositorio:

```sh
./compile.sh
```

Cuando `latexmk` está disponible, el comando equivalente es:

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

El manuscrito compilado se encuentra en [main.pdf](main.pdf).
