# Diagnóstico de adopción de IA — especificación completa

Listo para pegar en cualquier herramienta de formularios con lógica condicional. Es el escalón 0 de `10 §2` y el único recurso de captura del sistema.

**Promesa en la página:** *12 preguntas, 5 minutos. Te dice en qué escalón está tu equipo y qué te cuesta el escalón que falta.*

> **Nota de estructura.** `10 §3` describía los bloques como 3 / 4 / 3 / 2. Aquí el último bloque pasa a ser **intento previo + medición**, porque sin una pregunta de medición el escalón 3 no se puede detectar. Siguen siendo 12 preguntas.

---

## 1. Las 12 preguntas, con opciones exactas

### Bloque A — Punto de partida

**A1. ¿Cuántas personas trabajan en tu equipo?**
`1–3` · `4–10` · `11–25` · `26–50` · `Más de 50`

**A2. ¿Qué herramienta de IA paga tu empresa hoy?**
`ChatGPT (Plus, Team o Enterprise)` · `Microsoft Copilot` · `Google Gemini` · `Claude` · `Otra` · `Ninguna todavía`

**A3. ¿Desde cuándo la pagan?**
`Menos de 1 mes` · `1–3 meses` · `3–6 meses` · `Más de 6 meses` · `No pagamos ninguna`

### Bloque B — Uso real *(este bloque decide el escalón)*

**B1. De tu equipo, ¿cuántas personas la abrieron esta semana?**
`Ninguna` · `1 o 2` · `Menos de la mitad` · `Más de la mitad` · `Casi todas`

**B2. ¿Alguien la usa todos los días?**
`Nadie` · `Solo yo` · `Una persona además de mí` · `Varias personas` · `Todo el equipo`

**B3. Si tuvieras que nombrar una tarea concreta que hoy se hace con IA en tu equipo, ¿cuál sería?**
`[texto libre, máx. 80 caracteres]` + casilla `No sabría nombrar ninguna`

**B4. ¿Alguien empezó a usarla y la dejó?**
`Nadie la empezó` · `Sí, en la primera semana` · `Sí, a las 2 o 3 semanas` · `Sí, después de un mes` · `No, quien empezó sigue`

### Bloque C — El proceso y su coste *(este bloque produce la cifra)*

**C1. ¿Qué tarea repetitiva consume más horas a tu equipo?**
`[texto libre, máx. 80 caracteres]`

**C2. Entre todos, ¿cuántas horas a la semana dedican a esa tarea?**
`Menos de 5` · `5–10` · `10–20` · `20–40` · `Más de 40`

**C3. ¿Cuál es el costo por hora aproximado de quien la hace?**
`Menos de $15` · `$15–25` · `$25–40` · `$40–60` · `Más de $60`

### Bloque D — Intento previo y medición

**D1. ¿Hubo alguna capacitación o sesión para enseñar a usarla?**
`No, nunca` · `Sí, una vez al principio` · `Sí, varias veces` · `Sí, y hay seguimiento`

**D2. ¿Sabes cuántas horas les ahorró el mes pasado?**
`No` · `Lo estimo, pero no lo mido` · `Sí, lo mido`

---

## 2. Lógica de puntuación

**Se evalúa en orden. El primero que dispara, gana.**

| # | Condición | Resultado |
|--:|---|---|
| 0 | `A2 = Ninguna todavía` **o** `A3 = No pagamos ninguna` | **Escalón 0 — Todavía no empezaste** |
| 1 | `B1 ∈ {Ninguna, 1 o 2}` **y** `B2 ∈ {Nadie, Solo yo}` | **Escalón 1 — Comprado, no abierto** |
| 2 | `B4 ∈ {primera semana, 2 o 3 semanas, después de un mes}` **o** (`B1 = Menos de la mitad` **y** `B2 ∈ {Solo yo, Una persona además de mí}`) | **Escalón 2 — Abierto, no adoptado** |
| 3 | `B1 ∈ {Más de la mitad, Casi todas}` **y** `B2 ∈ {Varias personas, Todo el equipo}` **y** `D2 ∈ {No, Lo estimo}` | **Escalón 3 — Adoptado, no medido** |
| 4 | Ninguna de las anteriores | **Adopción sana** |

**Señal de calificación para ti (no se le muestra):**

- `A1 ∈ {11–25, 26–50, Más de 50}` + Escalón 1 o 2 → **lead prioritario**, es el taller de equipo (`10 §2`, escalón 2).
- `A1 ∈ {1–3, 4–10}` → kit de autoservicio, no taller.
- `D1 = No, nunca` + Escalón 2 → el caso más fácil de cerrar: fallaron sin haberlo intentado.
- `D1 ∈ {una vez, varias}` + Escalón 2 → **ya fallaron con capacitación**. Es el lead de mayor valor y el que confirma tu tesis: mostrar la herramienta no produce uso.

---

## 3. La cifra

```
horas_mes  = punto_medio(C2) × 4.33
coste_mes  = horas_mes × punto_medio(C3)
```

**Puntos medios:**

| C2 (horas/semana) | Valor | | C3 ($/hora) | Valor |
|---|--:|---|---|--:|
| Menos de 5 | 3 | | Menos de $15 | 12 |
| 5–10 | 7.5 | | $15–25 | 20 |
| 10–20 | 15 | | $25–40 | 32 |
| 20–40 | 30 | | $40–60 | 50 |
| Más de 40 | 50 | | Más de $60 | 75 |

**Ejemplo:** `10–20 h` + `$25–40` → 15 × 4.33 = 65 h/mes × $32 = **$2,078 al mes**.

### Cómo se presenta la cifra — y qué NO se dice

> **"Tu equipo dedica unas 65 horas al mes a [C1]. Al costo que indicaste, son unos $2,078 mensuales."**

**Prohibido** añadir "y la IA te ahorraría el X%". No tienes ese dato y no puedes tenerlo sin ver el proceso. La cifra es **lo que está en juego**, no lo que vas a ahorrar. Esa distinción es lo que separa un diagnóstico honesto de un embudo de humo — y el cliente la nota.

Debajo, en letra pequeña: *Estimación calculada a partir de los rangos que seleccionaste.*

---

## 4. El resultado, por escalón

Cada resultado tiene la misma forma: **nombre del escalón · dónde está el fallo · qué pasa si no lo tocas · el paso siguiente.**

### Escalón 0 — Todavía no empezaste

> Tu equipo no paga ninguna herramienta de IA todavía. Eso no es malo: es la única posición desde la que se puede hacer bien.
>
> **El error que vas a poder evitar:** casi todas las empresas compran primero y preguntan después qué hacer con eso. Por eso la mayoría termina en el escalón 1.
>
> **El paso siguiente:** antes de comprar nada, define **una sola tarea** — la que indicaste: *[C1]*. Esa tarea te cuesta unos **$[coste_mes]** al mes. Empieza por ahí, con una persona, durante dos semanas.

### Escalón 1 — Comprado, no abierto

> Pagan la licencia. Prácticamente nadie la abre.
>
> **Dónde está el fallo: en el arranque.** Nadie tuvo un motivo propio para entrar la primera vez. Una cuenta creada no es un motivo.
>
> **Si no lo tocas:** la renovación llega, alguien pregunta para qué sirve esto, y se cancela. El problema no se resuelve; se archiva.
>
> **El paso siguiente:** una persona, una tarea — *[C1]* —, un resultado visible esta semana. No el equipo entero. Una persona.

### Escalón 2 — Abierto, no adoptado

> La probaron. La dejaron.
>
> **Dónde está el fallo: en el día 14.** Es el punto exacto donde se rompe la adopción, y es el punto donde nadie mira. La novedad se acabó, el flujo viejo sigue existiendo, y volver a él es más barato que insistir.
>
> **Si no lo tocas:** el equipo ya aprendió que "esto no funciona". La próxima herramienta que introduzcas arranca con esa deuda encima, y arrancará peor.
>
> **El paso siguiente:** recuperar a la persona que la dejó, con su caso real, y una revisión marcada en el calendario al día 14. Sin esa revisión, se repite.

*Si además `D1 ∈ {una vez, varias}`, se añade:*
> Ya hubo capacitación y aun así pasó. Eso confirma algo incómodo: **mostrar la herramienta no produce uso.** Produce una demo que se olvida.

### Escalón 3 — Adoptado, no medido

> Tu equipo la usa. Nadie sabe cuánto vale.
>
> **Dónde está el fallo: en la evaluación.** Estás en mejor posición que el 90%, y aun así no puedes defender el gasto cuando alguien pregunte, ni decidir dónde ampliar.
>
> **Si no lo tocas:** el primer recorte de presupuesto se lleva por delante algo que sí estaba funcionando, porque nadie tenía el número.
>
> **El paso siguiente:** un criterio observable por tarea y una medición de cinco minutos al mes. No necesitas un dashboard; necesitas una cifra defendible.

### Adopción sana

> Tu equipo la usa, la usa a diario y tú mides lo que ahorra. **No necesitas ayuda con esto.**
>
> Si algo te sirve de aquí, es lo de siempre: el escalón que viene no es usar más IA, es usarla en un proceso más caro que *[C1]*.

**Este último caso se entrega igual de completo, sin intentar venderle nada.** Es raro, y quien lo recibe se acuerda de que no le vendiste. Eso vuelve como recomendación.

---

## 5. El correo de entrega

**Asunto:** `Tu resultado: escalón [N] — [nombre del escalón]`

```
[Nombre],

Tu equipo está en el escalón [N]: [nombre].

[Párrafo del resultado correspondiente, íntegro.]

La cifra: unas [horas_mes] horas al mes en [C1], que al costo que
indicaste son unos $[coste_mes] mensuales. Es una estimación
a partir de los rangos que seleccionaste, no una auditoría.

Una pregunta, y respóndeme aquí mismo:

¿Cuál de los tres escalones te suena más al tuyo? A veces el
formulario dice uno y la realidad del día a día dice otro.

[Firma]
```

**Por qué esa pregunta y no un botón de "agenda una llamada":** una pregunta abierta obtiene respuesta de quien tiene el problema de verdad, y esa respuesta **abre la conversación sin que tengas que empujarla**. Un botón de calendario en el primer correo filtra hacia abajo: solo lo pulsa quien ya decidió comprar, que es una minoría diminuta.

---

## 6. Requisitos de implementación

- **Lógica condicional** en el formulario: necesaria para la regla 0 y para la variante de D1 en el escalón 2.
- **Email obligatorio antes de ver el resultado**, no después. Después, la mitad no lo deja.
- **Cálculo automático** de `coste_mes`, o cálculo manual si tu herramienta no lo hace — con menos de 20 respuestas al mes, hacerlo a mano es perfectamente viable y te obliga a leer cada una.
- **Guarda las respuestas crudas.** A las 50 respuestas tienes el dato que ningún barrido de keywords te da: en qué escalón está realmente tu mercado. Eso decide qué series produces (`09 §8`).
- **No pidas teléfono.** Baja la conversión y no lo necesitas para el primer contacto.
