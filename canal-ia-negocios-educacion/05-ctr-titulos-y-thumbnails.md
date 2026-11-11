# 05 — CTR: títulos y miniaturas

La miniatura y el título no son empaquetado. Son **el 100% de la decisión de clic** y, por tanto, el techo duro de todo lo demás. Un guion excelente con CTR de 1.8% no existe estadísticamente.

---

## 1. Título y miniatura son una sola unidad

El error más común es que digan lo mismo. Si la miniatura dice "RESTAURANTE" y el título dice "Cómo automatizar un restaurante con IA", uno de los dos está desperdiciado.

**Regla: la miniatura aporta la consecuencia; el título aporta el procedimiento.** O al revés. Nunca los dos lo mismo.

| Título | Miniatura (texto ≤4 palabras) | Juntos comunican |
|---|---|---|
| Cómo automatizar un restaurante con IA (sin programar) | `−31 H / MES` | Qué se hace + qué se gana |
| El error de automatización que cuesta el 40% del ahorro | `PASO 3` | Consecuencia + dónde está |

---

## 2. Anatomía del título

- **≤60 caracteres**, y los **primeros 40 deben funcionar solos**: en móvil el resto se corta.
- **Sustantivo concreto antes que abstracto.** "restaurante" > "tu negocio" > "las empresas".
- **La fricción eliminada vale más que el beneficio prometido.** "sin programar", "sin equipo técnico", "sin pagar herramientas" convierten mejor que "fácil y rápido".
- **Un buen título excluye a alguien.** Si le sirve a todo el mundo, no le genera urgencia a nadie.
- **Nunca prometas lo que el guion no paga.** El clic obtenido con sobrepromesa se paga con abandono en el segundo 20, y el algoritmo penaliza esa secuencia con más fuerza que un CTR bajo.

**Validación:** `vidiq_score_title`. Umbral operativo de publicación: **≥75**. [SUPUESTO de arranque, no un benchmark publicado — es una escala propietaria de vidIQ. Ajusta el umbral cuando tengas 20 títulos puntuados y su CTR real: el objetivo es correlacionar score con CTR **en tu canal**, no perseguir el número.]

---

## 3. Anatomía de la miniatura

- **Un solo foco.** Si el ojo tiene que elegir, no elige: sigue bajando.
- **≤4 palabras**, tipografía pesada, contraste alto contra el fondo.
- **Máximo tres colores dominantes.**
- **Prueba de los 120 píxeles:** redúcela a 120 px de ancho y míralas en una fila con tus competidores reales. Si no se distingue qué es, se rehace. Esta prueba se hace **siempre**, no cuando hay dudas.
- **Prohibido:** la cara genérica de IA con expresión de sorpresa, las flechas rojas decorativas, el collage de cuatro elementos. Son la firma visual del contenido automatizado y el espectador hispanohablante ya la filtra por saturación.

---

## 4. Protocolo de iteración de CTR (el único que produce aprendizaje)

Probar títulos al azar no enseña nada. El protocolo:

1. **Publica** con el título y miniatura ganadores del proceso P6/P7.
2. **No toques nada durante 48 horas.** Antes de ~1,000 impresiones el CTR es ruido estadístico.
3. **A las 48 h, lee CTR y retención juntos** (tabla de diagnóstico en `07 §3`). Nunca por separado: CTR alto con retención baja es un problema peor que CTR bajo.
4. **Cambia UNA variable.** Si cambias título y miniatura a la vez, no aprendes cuál funcionó. Primero la miniatura: mueve más el CTR que el título en la mayoría de superficies.
5. **Espera 48 h más** y compara sobre volumen de impresiones comparable.
6. **Registra el resultado en la ficha del video.** Un cambio no registrado es un experimento perdido.
7. **Máximo dos iteraciones por video.** A partir de la tercera estás optimizando ruido y confundiendo al algoritmo sobre a quién mostrar el video.

**Advertencia sobre paquetes retroactivos:** cambiar el título de un video ya distribuido reinicia parte del aprendizaje del algoritmo sobre su audiencia. En un video con tracción, un cambio puede costar más de lo que gana. **Regla: no toques el paquete de un video que esté por encima de su CTR medio.**

---

## 5. La biblioteca de patrones (constrúyela desde el video 1)

Cada video publicado alimenta una tabla con: título, familia (P6 1–5), score de vidIQ, arquetipo de miniatura, CTR a 48 h, CTR a 7 días, retención a 30 s.

A los 20 videos esa tabla vale más que cualquier consejo externo, porque mide **tu** audiencia. La plantilla está en `plantillas/ficha-de-video.md`. Es la parte del sistema que más se abandona y la que más rendimiento compuesto produce.
