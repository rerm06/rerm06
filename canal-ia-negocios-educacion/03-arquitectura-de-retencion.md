# 03 — Arquitectura de retención

El guion no es prosa con estructura. Es una **máquina de estados con presupuesto de atención**. Este documento define la máquina; `02-biblioteca-de-prompts.md` la opera.

---

## 1. El principio que gobierna todo

En cada instante el espectador está resolviendo una sola ecuación inconsciente:

> **¿Lo que voy a obtener en los próximos 20 segundos vale más que lo que me ofrece el siguiente thumbnail?**

Solo hay dos formas de ganar esa ecuación: **deuda de información** (le debes una respuesta que aún no le diste) y **entrega de valor** (acabas de darle algo utilizable). El error estructural del contenido generado con IA es entregar valor sin deuda: todo se explica de inmediato, nada queda abierto, y el espectador se va satisfecho al minuto 3 con el 25% de retención.

**Regla de oro: nunca cierres un loop sin haber abierto el siguiente.** El cierre y la apertura ocurren en la misma frase, no en frases consecutivas.

---

## 2. Mapa de segundos (video de 10–13 min)

| Tramo | Función | Restricción dura |
|---|---|---|
| **0:00–0:07** | **Pattern interrupt.** Afirmación con consecuencia concreta, cifra o contradicción. | Prohibido: saludo, nombre del canal, "en el video de hoy", contexto, definición. La primera palabra es sustantivo o verbo, nunca conector. |
| **0:07–0:22** | **Contrato.** Qué se llevará exactamente y en cuánto tiempo. Específico y verificable. | Máx. 2 frases. Debe contener un sustantivo concreto (un proceso, una cifra, un entregable). |
| **0:22–0:40** | **Loop mayor.** La pregunta que solo se resuelve en el último tercio. | Debe ser una pregunta cuya respuesta el espectador **no puede adivinar**. Si puede, no es un loop. |
| **0:40–2:00** | **Bloque 1 — el problema real.** Por qué el enfoque obvio falla. | Aquí muere el 30% de la audiencia. Un micro-loop cada 45 s, mínimo un dato concreto cada 30 s. |
| **2:00–5:30** | **Bloque 2 — el procedimiento.** El cómo, paso a paso, con pantalla. | Cada paso termina con la consecuencia de saltárselo. |
| **5:30–8:00** | **Bloque 3 — el caso / la evidencia.** Aplicación real con números. | Debe contener el momento de mayor densidad de valor del video. |
| **8:00–9:30** | **Bloque 4 — transferencia (avatar A2).** Cómo enseñar/implantar esto con un equipo. | Es el bloque que diferencia este canal. No lo cortes por duración. |
| **9:30–10:30** | **Cierre del loop mayor + límite honesto.** La respuesta prometida en 0:22, y dónde el método NO funciona. | El límite honesto sube comentarios y credibilidad; no es una concesión, es una herramienta de retención. |
| **10:30–11:00** | **Puente.** No un CTA genérico: el siguiente video como continuación necesaria. | Prohibido "suscríbete y dale like". El puente es: *"Esto resuelve X. Pero deja abierto Y — y Y es lo que te cuesta dinero. Ese es el video de al lado."* |

---

## 3. Los tres puntos de fuga

La caída de audiencia no es lineal. Se concentra en tres momentos. Cada uno tiene un remedio distinto:

| Punto | Por qué se van | Remedio obligatorio |
|---|---|---|
| **0:15–0:35** | El hook prometió y el cuerpo empezó a contextualizar. | **Entrega parcial anticipada**: da ya un fragmento del valor prometido, antes de cualquier contexto. |
| **~2:00** | Terminó la novedad, empieza el trabajo. | **Escalón de stakes**: sube la apuesta. Introduce el coste de no saber esto, con cifra. |
| **~5:00** | Saturación cognitiva. | **Cambio de modalidad**: pasa de explicación a demostración en pantalla, o de abstracto a caso concreto con nombre y números. |

---

## 4. Tipos de loop (usa los cinco, no repitas el mismo dos veces seguidas)

1. **Loop de resultado** — "Al final vas a ver el número exacto que esto ahorró. No es el que esperas."
2. **Loop de error** — "Hay un paso que el 90% hace al revés. Lo vas a reconocer porque probablemente lo estés haciendo."
3. **Loop de contradicción** — "Esto contradice lo que te acaban de vender en todos los cursos de IA. En el minuto 8 te muestro por qué."
4. **Loop de identidad** — "Si tu respuesta a esta pregunta es la segunda, este video te va a incomodar."
5. **Loop de cuenta atrás** — "De los cuatro pasos, el tercero es el único que no se puede saltar. Ya vamos por el primero."

**Cadencia:** un loop abierto cada 40–60 segundos en los primeros 3 minutos; cada 60–90 segundos después. **Nunca más de dos loops abiertos a la vez** — tres o más producen ruido, no tensión, y el espectador deja de creer que se van a cerrar.

---

## 5. Pacing a nivel de frase

- **Longitud media de frase: 11–14 palabras.** Alternancia obligatoria larga-corta-corta. Una frase de más de 25 palabras en voz sintética es una fuga de atención.
- **Reset visual cada 8–12 segundos.** Cambio de plano, de gráfico, de encuadre o de texto en pantalla. No es decoración: reinicia el contador de habituación.
- **Una idea por párrafo hablado.** Si un párrafo necesita "y además", es dos párrafos.
- **Prohibido el resumen intermedio.** "Entonces, como vimos…" es la señal universal de "puedes irte ya".
- **Números concretos por encima de adjetivos.** "Tres horas y media a la semana" gana siempre a "muchísimo tiempo".

## 6. Lista negra léxica (si Claude produce esto, el guion se rechaza)

`En el mundo actual` · `En la era digital` · `No es ningún secreto que` · `Bienvenidos de nuevo al canal` · `Sin más preámbulos` · `Es importante destacar` · `En resumen` · `Como vimos anteriormente` · `revolucionario` · `game changer` · `disruptivo` · `El futuro es ahora` · `soluciones de vanguardia` · `sumérgete` · `desbloquea el poder de` · `en este video vamos a ver` · `pero antes, suscríbete`.

---

## 7. Checklist binario de retención (previo a producción)

Cada línea se responde **PASA / FALLA**. Un FALLA bloquea la grabación de voz.

- [ ] La primera frase funciona sin ninguna frase anterior y contiene consecuencia, cifra o contradicción.
- [ ] En los primeros 7 segundos no hay saludo, nombre de canal ni definición.
- [ ] El contrato (qué se lleva el espectador) está dicho antes del segundo 22 y es verificable.
- [ ] El loop mayor está abierto antes del segundo 40 y se cierra explícitamente después del minuto 9.
- [ ] Hay al menos un loop abierto en todo momento entre 0:40 y 9:30.
- [ ] Nunca hay más de dos loops abiertos simultáneos.
- [ ] Los cinco tipos de loop aparecen y ninguno se repite consecutivamente.
- [ ] Los tres puntos de fuga (0:25, 2:00, 5:00) tienen su remedio específico aplicado.
- [ ] El bloque de transferencia a equipo/aula (A2) existe y dura 60–90 s.
- [ ] Hay un límite honesto declarado: dónde el método no funciona.
- [ ] El cierre es un puente a un video concreto, no un CTA genérico.
- [ ] Cero términos de la lista negra (§6).
- [ ] Longitud media de frase entre 11 y 14 palabras.
- [ ] Cada cifra del guion tiene fuente o está marcada como estimación en el propio audio.
