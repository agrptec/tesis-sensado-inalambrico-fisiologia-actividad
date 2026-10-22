# Detalle operativo de la Etapa 1

Este documento conserva la planeación granular retirada del cuerpo de la monografía.
No constituye evidencia experimental ni modifica los criterios científicos descritos
en los capítulos 10–14.

## Líneas y productos

- **LT1 — Modelado físico (M1–M6):** casos de referencia, reproducción de dc01,
  calibración progresiva, operadores Wi‑Fi/LoRa y mapas de observabilidad. Productos:
  repositorio del modelo directo, comparación DICHASUS y documento de limitaciones.
- **LT2 — Datos y protocolo (M1–M5):** modelo de datos, nomenclatura, versiones,
  sincronización, control de calidad, ética, privacidad y métodos de referencia.
  Productos: diccionario, protocolo v1.0, lineamientos de gobernanza y baselines.
- **LT3 — Plataforma (M1–M6):** referencia RF y mecánica, Wi‑Fi, LoRa/SDR,
  mmWave, RGB‑D, fisiología e inerciales. Productos: inventario, procedimiento de
  calibración/sincronización e informe de estabilidad.
- **LT4 — Estudio controlado (M3–M9):** habitación vacía, reflector estático y
  móvil, fantoma respiratorio, una persona, comparación Wi‑Fi/LoRa y condición
  exploratoria con dos personas. Los niveles se habilitan de forma acumulativa.
- **LT5 — Vinculación (M6–M10):** contraparte, caracterización de la Colmena,
  codiseño de un caso de uso ambiental y taller IoT. El taller no es una campaña
  experimental con participantes.
- **LT6 — Integración (M8–M10):** entorno reproducible, plataforma caracterizada,
  protocolo, conjunto preliminar, baselines, sitio, matriz de riesgos y plan de Etapa 2.

## Paquete técnico de ocho semanas

| Semana | Actividad | Evidencia de cierre |
|---|---|---|
| 1 | Congelar versiones, manifiestos, particiones y artefactos S1–S4.7‑R. | Correspondencia reproducible y sumas de verificación. |
| 2 | Implementar la familia de representaciones y perturbaciones instrumentales. | Pruebas algebraicas y matriz de respuesta. |
| 3 | Ejecutar fidelidad estática de dc01. | Resultados densos y por bloques, con normalización ajustada sólo en entrenamiento. |
| 4 | Auditar d010 y su sensibilidad geométrica si los metadatos lo permiten. | Pareto entre rechazo instrumental y cambio del transmisor. |
| 5 | Profundizar la resolubilidad por trayectorias. | Espectro singular, rango efectivo, coherencias y agrupación de modos. |
| 6 | Integrar perturbaciones seleccionadas de RadioRange. | Vulnerabilidades por observable bajo rangos trazables. |
| 7 | Ejecutar casos mínimos de mapeo interior y WiSegRT. | Flujo nube/malla–RT con límites declarados. |
| 8 | Auditar subconjuntos CAEZ y OpenLoRa. | Adaptadores y requisitos medidos para el banco propio. |

## Cronograma relativo

| Meses | Líneas | Producto revisable |
|---|---|---|
| M1–M2 | LT1/LT2 | Comparación estática, resolución y fusión congelada documentadas. |
| M1–M3 | LT2/LT3 | Referencia RF, metrología y captura especificadas. |
| M2–M4 | LT3 | E0: deriva y repetibilidad. |
| M3–M5 | LT3/LT4 | E1: ΔH y Jacobiano con desplazamiento medido. |
| M4–M6 | LT1/LT3 | Reconstrucción RGB‑D/LiDAR, registro y controles independientes. |
| M5–M7 | LT4 | E2: fidelidad diferencial y forma de onda del fantoma. |
| M6–M8 | LT1/LT4 | Comparación Wi‑Fi, LoRa y radar bajo perturbación común. |
| M7–M9 | LT4 | E3 preliminar, sujeto a aprobación ética. |
| M8–M10 | LT6 | Protocolo y conjunto v1; transferencia inicial. |
| M6–M10 | LT5 | Sitio caracterizado; taller previsto para M9–M10. |

## Movilidad y vinculación

La planeación aprobada contiene 68 000 MXN para viáticos y 30 000 MXN para pasajes
nacionales. La solicitud refiere hospedaje y alimentación para dos personas durante
12 noches y tres vuelos nacionales redondos. Se propone concentrar actividades en
M9–M10 para revisión experimental, validación Wi‑Fi/LoRa, caracterización del sitio,
taller y preparación de Etapa 2. Una estancia de un mes o una movilidad a UPNA exige
financiación y autorización específicas; no se registra como concedida.

La vinculación sigue cuatro fases: acuerdo institucional, caracterización técnica,
codiseño de un solo caso de uso ambiental y taller/demostración. El resultado técnico
es una ficha de sitio con geometría, materiales, energía, infraestructura Wi‑Fi,
cobertura LoRa, ruido RF y restricciones de instalación.

## Adquisiciones

### Radiofrecuencia — bolsa autorizada: 40 000 MXN

1. Referencia coherente compatible con la arquitectura SDR; prioridad muy alta.
2. Coaxiales, divisores, atenuadores y adaptadores caracterizados; prioridad muy alta.
3. Antenas, soportes rígidos y registro de polarización; prioridad alta.
4. Marcas temporales, disparos y automatización mecánica; prioridad alta.
5. Ampliación Wi‑Fi/LoRa/SDR sólo ante una carencia demostrada.

Compartir frecuencia o PPS no acredita fase relativa estable tras reinicios. El Pluto
reportado no proporciona por sí solo dos receptores simultáneos.

### Metrología y referencias — bolsa autorizada: 40 000 MXN

1. Etapa lineal y referencia micrométrica compatibles con E1; prioridad muy alta.
2. Fijaciones y fiduciales de dimensiones verificadas; prioridad muy alta.
3. Referencia respiratoria sincronizada para E3; prioridad alta.
4. LiDAR 3D de gama media, sujeto a cotización y comparación con RGB‑D.
5. Distanciómetro/control métrico como complemento.
6. Reutilización de radar, RGB‑D, IMU y ECG; ampliación sólo ante necesidad medida.

Un LiDAR tipo Livox Mid‑360 o equivalente se evaluará por exportación de nube,
marcas temporales, SDK/ROS2, registro métrico e incertidumbre. Si la combinación
excede el rubro, se priorizan mecánica, referencia y sincronización.

### Kits de divulgación — bolsa autorizada: 70 000 MXN

Se contemplan 25 kits, con promedio de 2 800 MXN por kit. Cada uno integra
microcontrolador, conectividad, sensores, alimentación y material de prototipado.
El sensor ambiental específico se selecciona después de caracterizar el sitio.

## Presupuesto aprobado

| Rubro | Monto (MXN) |
|---|---:|
| Apoyo a la investigación científica | 240 000 |
| Honorarios por servicios profesionales | 240 000 |
| Material electrónico para kits del taller | 70 000 |
| Viáticos | 68 000 |
| Pasajes nacionales | 30 000 |
| Material electrónico para pilotos | 40 000 |
| Sensores y suministros de laboratorio | 40 000 |
| **Total Etapa 1** | **728 000** |

Las asignaciones internas se cierran contra cotizaciones y reglas administrativas.
Este documento no autoriza transferencias entre bolsas.

## Revisiones

- **R1 (M4):** gemelo estático reproducible y discrepancia cuantificada.
- **R2 (M5):** protocolo, trazabilidad, calidad y ética formalizados.
- **R3 (M5):** banco E0–E1 estable, con referencia y sincronización caracterizadas.
- **R4 (M7):** evidencia E0–E2 sobre repetibilidad, movimiento y fantoma.
- **R5 (M9):** sitio, contraparte y caso de uso definidos.
- **R_E2 (M10):** cumplimiento conjunto de RF, sincronización, protocolo, ética,
  sitio y datos antes de iniciar la campaña formal.
