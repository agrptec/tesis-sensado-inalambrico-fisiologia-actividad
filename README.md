# Sensado inalámbrico pasivo de fisiología y actividad humana

Repositorio del manuscrito doctoral sobre la recuperación de patrones fisiológicos y de actividad física a partir de señales de radiofrecuencia generadas por infraestructura de comunicaciones existente. La investigación estudia bajo qué condiciones el canal inalámbrico permite observar micro y macromovimientos humanos, qué información conserva cada modalidad de adquisición y cómo puede recuperarse esa información de forma robusta cuando cambian el entorno, las personas, los dispositivos y las condiciones de propagación.

El trabajo se vincula con la línea de investigación **«Sistema de monitoreo pasivo mediante redes inalámbricas existentes para la estimación de indicadores de salud y comportamiento físico»**. Su alcance doctoral se concentra en los fundamentos físicos y computacionales del sensado: modelado del canal, observabilidad, estimación, incertidumbre y transferencia entre simulación y medición.

## Pregunta de investigación

Una medición Wi-Fi o LoRa no observa directamente respiración, postura, marcha o actividad. Registra el efecto conjunto de la geometría, la propagación multitrayectoria, la dinámica humana, la forma de onda, las antenas, la instrumentación, el protocolo, el ruido y la interferencia. La pregunta central es:

> ¿Qué representación física y latente del entorno, del canal y de la dinámica humana conserva la información necesaria para recuperar variables fisiológicas y de actividad física, y permite determinar cuándo esas variables son realmente observables?

La hipótesis de trabajo plantea que una representación jerárquica y físicamente estructurada, calibrada con mediciones y complementada con aprendizaje automático, puede separar mejor los factores del entorno, la radio y la instrumentación de las perturbaciones asociadas al ser humano. Esta hipótesis se somete a contrastes experimentales; no se asume como resultado.

## Papel del gemelo digital

El gemelo digital inalámbrico es una de las propuestas metodológicas para estudiar el problema, no el objetivo final de la tesis. Se emplea para:

- simular cómo una escena y su dinámica producen trayectorias de propagación y observaciones de radio;
- calibrar geometría, materiales, antenas y perturbaciones instrumentales con mediciones reales;
- introducir de manera controlada presencia, movimiento macroscópico y deformaciones respiratorias;
- analizar la sensibilidad del canal mediante jacobianos e información de Fisher;
- generar datos y representaciones intermedias que faciliten la transferencia a nuevos escenarios;
- distinguir un fallo del estimador de una carencia física de información en la medición.

La simulación se concibe como un modelo directo que relaciona el estado físico con la señal. La recuperación de fisiología y actividad corresponde al problema inverso. Ambos se validan por separado para evitar que un buen ajuste promedio del canal se interprete, sin evidencia adicional, como capacidad de sensado humano.

## Alcance científico

El programa experimental progresa desde condiciones controladas hacia situaciones humanas más complejas:

1. estabilidad instrumental y caracterización del canal estático;
2. reflector mecánico con desplazamiento conocido;
3. fantoma respiratorio con referencia sincronizada;
4. presencia, postura y movimiento de una persona;
5. respiración combinada con movimiento macroscópico;
6. separación de varias personas y transferencia entre escenarios;
7. diseño de redes Wi-Fi/LoRa orientado a maximizar observabilidad.

El alcance primario comprende presencia, movimiento macroscópico y respiración. La postura detallada, la frecuencia cardiaca, la fisiología multiusuario y la interpretación de indicadores de salud son extensiones que requieren evidencia adicional y, cuando corresponda, protocolos éticos y validación con instrumentos de referencia. El manuscrito no formula diagnósticos ni sustituye una validación clínica.

## Avance experimental

El primer corte experimental utiliza datos de canal y simulación para evaluar cuánto puede reconstruirse antes de introducir dinámica humana. Los experimentos S1/B0--B2 y S4.1--S4.6d.2 estudian, entre otros aspectos:

- líneas base geométricas y calibración neuronal de materiales;
- predicción de potencia y dispersión temporal;
- separación entre magnitud, retardo efectivo, fase común y estructura espectral residual;
- generalización espacial con particiones que reducen la fuga por proximidad;
- información adicional aportada por descriptores del trazado de rayos;
- sensibilidad de la fase a errores pequeños de longitud de trayectoria;
- límites de una nube de puntos estática para predecir el canal complejo.

Los resultados apoyan una distinción operacional entre componentes parcialmente predecibles y componentes de fase que requieren una referencia o un tratamiento explícito de invariancias. Todavía no demuestran recuperación fisiológica. Su función es identificar qué representación y qué sistema de medición deben utilizar los experimentos con movimiento y respiración.

## Tecnologías y métodos

- canales inalámbricos variables en tiempo, propagación multitrayectoria y estimación compleja;
- Wi-Fi OFDM/CSI y LoRa CSS/IQ como observadores complementarios;
- trazado de rayos diferenciable y representaciones geométricas explícitas e implícitas;
- aprendizaje profundo, representaciones latentes y optimización inversa;
- análisis de observabilidad, información de Fisher y cuantificación de incertidumbre;
- supervisión multimodal mediante referencias de movimiento y fisiología.

## Contenido del repositorio

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

El repositorio contiene el manuscrito y su bibliografía. Los datos experimentales, los modelos entrenados y el código de adquisición o entrenamiento todavía no forman parte de esta distribución.

## Compilación

Se requiere una distribución de LaTeX con `latexmk`, `pdflatex`, BibTeX y MakeIndex. En macOS puede utilizarse MacTeX; en Linux, una instalación suficientemente completa de TeX Live.

Desde la raíz del repositorio:

```sh
./compile.sh
```

El script detiene la compilación ante errores, guarda los archivos auxiliares en `.build/` y produce `main.pdf` en la raíz. El comando equivalente es:

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

Para compilar en Overleaf, debe cargarse la estructura completa y seleccionarse `main.tex` como documento principal.

## Manuscrito

La versión compilada está disponible en [main.pdf](main.pdf). [main.tex](main.tex) define el orden de los capítulos y la arquitectura completa del documento.

## Historial de Git

El repositorio se creó a partir de una versión de trabajo que no conservaba metadatos de Git. Los commits iniciales reconstruyen hitos temáticos del estado actual y no representan la cronología exacta de todos los experimentos realizados.
