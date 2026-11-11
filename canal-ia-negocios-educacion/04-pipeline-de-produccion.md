# 04 — Pipeline de producción

**Principio rector:** una herramienta, un trabajo. Cada herramienta añadida multiplica los puntos de fallo y el coste de contexto al cambiar de tarea. Si una herramienta nueva no elimina una existente, no entra.

---

## 1. El stack

| Etapa | Herramienta | Único trabajo | Alternativa si falla |
|---|---|---|---|
| Investigación + guion | Claude | Dossier, arquitectura, guion, auditoría | — (es el núcleo) |
| Validación de demanda | vidIQ (MCP) | Keywords, outliers, score de título | YouTube Search + autocompletar |
| Voz | ElevenLabs | Locución | Voz propia grabada |
| Imagen fija / miniatura | Midjourney o Flux | Miniatura y planos de apoyo | Canva + banco de imágenes |
| Clip generativo | Runway o Pika | 5–10 s de apoyo, **nunca el cuerpo** | B-roll de stock |
| Captura de pantalla | OBS | Demostración del procedimiento | Grabador nativo del SO |
| Edición | CapCut Pro o Premiere | Montaje | DaVinci Resolve (gratis) |

**Coste:** no incluyo cifras de suscripción. Los precios de estas herramientas cambian por trimestre y no los tengo verificados a fecha de hoy; publicar un presupuesto inventado sería peor que no publicarlo. Consúltalos el día que montes el stack y anótalos en este archivo.

---

## 2. El ciclo de 4 días (10 videos por ciclo)

El batching no ahorra tiempo por hacer lo mismo en serie. Ahorra porque **elimina el coste de cambio de modo mental**: investigar, escribir, narrar y editar usan capacidades distintas, y alternarlas 10 veces cuesta más que hacerlas en bloque.

### Día 1 — Investigación y guion (P1→P5, 10 videos)
Una conversación de Claude por video. Por cada uno: dossier (P1) → arquitectura (P2) → hooks (P3) → guion (P4) → **auditoría adversarial en conversación nueva (P5)**.
**Criterio de terminación:** 10 guiones con checklist de `03 §7` en PASA completo. Un guion con un solo FALLA no pasa al día 2; se corrige o se descarta. Descartar es barato el día 1 y carísimo el día 3.

### Día 2 — Voz y activos
Locución de los 10 guiones en una sola sesión (misma voz, mismos ajustes, cero deriva de tono). Después, todas las miniaturas. Después, todos los planos de apoyo.
**Criterio de terminación:** 10 pistas de audio limpias + 10 miniaturas exportadas + carpeta de activos por video.

### Días 3–4 — Montaje y programación
Montaje en serie. Publicación programada.
**Criterio de terminación:** 10 videos programados con paquete de publicación completo (`P8`).

**Ritmo sostenible:** 10 videos por ciclo cubren entre 3 y 5 semanas de publicación a 2–3 videos por semana. Un ciclo al mes.

---

## 3. Video generativo: la regla que protege la retención

Runway y Pika producen clips que, encadenados, generan el "look de IA": inconsistencia de sujeto entre planos, física incorrecta, texto ilegible. El espectador no lo verbaliza, pero lo lee como *baja calidad* y se va.

**Regla: el video generativo no supera el 15% del metraje y nunca aparece en los primeros 30 segundos.** El cuerpo del video se sostiene con captura de pantalla real, gráficos de datos, texto tipográfico en movimiento y fotografía fija con movimiento de cámara. La captura de pantalla real es, además, el activo más retentivo del formato "procedimiento": demuestra que el método existe.

---

## 4. Control de calidad — tres puertas

Ninguna se salta. Cada una se responde PASA/FALLA.

| Puerta | Cuándo | Qué bloquea |
|---|---|---|
| **G1 — Guion** | Fin día 1 | Checklist `03 §7` completo. Un FALLA = no avanza. |
| **G2 — Audio** | Fin día 2 | Sin errores de pronunciación en términos técnicos ni cifras. Ritmo verificado escuchando a 1.0× los primeros 45 s. |
| **G3 — Publicación** | Antes de programar | Miniatura legible a 120 px · título ≤60 caracteres · capítulos con curiosidad · primeras 2 líneas de descripción con keyword · fin de pantalla apuntando al video del puente · enlace de captura de email activo. |

---

### Regla de cobertura competitiva

**Un barrido de YouTube no es un mapa competitivo.** La herramienta de outliers cubre vídeo largo de YouTube; no ve TikTok, Instagram, LinkedIn ni podcasts. Antes de afirmar que un espacio está vacío —o de posicionarse como si lo estuviera— hay que mirar esas cuatro superficies a mano. Este sistema ya cometió ese error una vez y está documentado en `datos/competencia-pr-2026-09-16.md` §1.

---

## 5. Los tres fallos que hunden un canal faceless, y su contramedida

1. **Deriva de calidad en el guion 7 de 10.** El cansancio del día 1 produce guiones progresivamente más planos. **Contramedida:** escribe los guiones en orden inverso de importancia — los temas de mayor potencial se escriben primero, cuando tienes criterio fresco.
2. **Homogeneización de hooks.** Diez guiones seguidos convergen al mismo arquetipo de apertura. **Contramedida:** registra el arquetipo de hook (A–F de P3) en la ficha de cada video; ningún arquetipo puede usarse más de 3 veces en un lote de 10.
3. **Publicar el lote entero sin leer los datos del primero.** Es el fallo caro: 10 videos con el mismo error estructural. **Contramedida:** el video 1 del lote se publica **7 días antes** que el resto. Si su retención a 30 s cae por debajo del umbral de `07 §2`, los 9 restantes se reeditan antes de publicarse.
