# 02 — Biblioteca de prompts

Diez prompts encadenados. Se ejecutan **en orden**: la salida de cada uno es la entrada del siguiente. Saltarse P1 o P5 es la causa habitual de guiones que suenan a IA.

**Variables:** `{{TEMA}}`, `{{KEYWORD}}`, `{{AVATAR}}`, `{{DURACION}}`, `{{CASO}}`. Sustitúyelas antes de pegar.

**Regla transversal (pégala como instrucción de proyecto en Claude, no en cada prompt):**

```
Trabajas como guionista senior de un canal de YouTube en español sobre IA aplicada a
negocios y educación. Reglas permanentes:
1. Nunca inventes cifras, fechas, nombres de empresa, estudios, fuentes ni resultados.
   Toda afirmación cuantitativa se marca [VERIFICADO: fuente], [INFERENCIA] o [SUPUESTO].
   Si no puedes verificar un dato, escribe el guion sin él en lugar de rellenar el hueco.
2. Prohibido el léxico de la lista negra (03-arquitectura-de-retencion.md §6).
3. Longitud media de frase: 11-14 palabras. Alterna larga-corta-corta.
4. Escribes para ser LEÍDO EN VOZ ALTA por una voz sintética. Si una frase no se puede
   decir de una sola respiración, se parte.
5. No elogias al usuario, no te autoevalúas con puntajes, no resumes lo ya dicho.
6. Español neutro. Sin modismos regionales fuertes. Cifras en USD.
```

---

## P1 — Investigación con protocolo anti-alucinación

*Ejecutar SIEMPRE antes de escribir. Su salida es el único material fáctico autorizado para el guion.*

```
Vas a preparar el dossier de investigación para un video sobre: {{TEMA}}.

No escribas guion. Entrega un dossier en seis bloques:

1. HECHOS VERIFICABLES. Máximo 12. Cada uno en una línea, con su fuente nombrada y
   la fecha del dato. Si no tienes fuente, NO lo incluyas aquí.
2. ZONA DE INCERTIDUMBRE. Qué se afirma comúnmente sobre este tema que en realidad
   no está establecido. Esta es la mina de oro del guion: aquí están las contradicciones.
3. EL ERROR DOMINANTE. Qué hace mal la mayoría de {{AVATAR}} al abordar este tema, y
   cuál es el coste concreto de ese error (en horas, dinero o riesgo).
4. EL PROCEDIMIENTO. Los pasos reales, en orden, con el punto de fallo de cada paso.
   Si un paso requiere una herramienta, nombra la herramienta y su alternativa gratuita.
5. OBJECIÓN DEL EXPERTO. Escribe las tres objeciones más fuertes que haría alguien que
   sabe más que nosotros de este tema, y la respuesta honesta a cada una. Si alguna
   objeción no tiene buena respuesta, dilo: eso se convierte en el "límite honesto" del video.
6. VACÍOS. Qué dato necesitaría este video que NO tienes y que yo debo conseguir antes
   de que escribas nada. Máximo 3, en orden de importancia.

No rellenes ningún bloque por completarlo. Un bloque con dos entradas sólidas vale más
que uno con ocho inventadas.
```

---

## P2 — Arquitectura antes que prosa

*Nunca pidas el guion completo de entrada. Primero la máquina, después las palabras.*

```
Con el dossier anterior, diseña la ARQUITECTURA del video. Todavía no escribas prosa.

Entrega una tabla con una fila por bloque y estas columnas:
marca de tiempo | función narrativa | idea única del bloque | loop que ABRE | loop que CIERRA | recurso visual

Restricciones:
- Duración objetivo {{DURACION}}. Estructura según 03-arquitectura-de-retencion.md §2.
- El loop mayor abre antes del segundo 40 y cierra después del minuto 9.
- En todo momento entre 0:40 y el cierre debe haber al menos un loop abierto,
  y nunca más de dos simultáneos.
- Usa los cinco tipos de loop (resultado, error, contradicción, identidad, cuenta atrás)
  sin repetir el mismo consecutivamente.
- Marca explícitamente el remedio aplicado en cada uno de los tres puntos de fuga
  (0:25, 2:00, 5:00).
- Incluye un bloque de 60-90 s de transferencia a equipo/aula.

Debajo de la tabla, escribe en una sola frase la PROMESA del video y en otra el
LÍMITE HONESTO (dónde este método no funciona).
```

---

## P3 — Hooks: 12 variantes, 6 arquetipos

```
Escribe 12 aperturas para este video. Dos por cada arquetipo:

A. CONTRADICCIÓN — desmonta una creencia que {{AVATAR}} da por cierta.
B. CIFRA CON CONSECUENCIA — un número concreto y lo que implica para quien escucha.
C. ESCENA — una situación de 2 frases que el espectador reconoce como suya.
D. CONFESIÓN DE ERROR — algo que se hizo mal y lo que costó.
E. PREGUNTA IMPOSIBLE DE IGNORAR — se responde mentalmente antes de poder evitarlo.
F. APUESTA — una afirmación fuerte y falsable que el video se compromete a demostrar.

Reglas duras:
- Máximo 22 palabras cada una. Las 7 primeras palabras deben funcionar solas.
- La primera palabra es sustantivo o verbo. Nunca conector, nunca saludo.
- Prohibido nombrar el canal, saludar, o decir "en este video".
- Prohibido usar una cifra que no esté marcada como verificada en el dossier P1.

Después de las 12, señala las 3 mejores y explica en una línea por qué cada una gana:
qué tensión abre y con qué rapidez.
```

---

## P4 — Guion completo

```
Escribe el guion completo siguiendo EXACTAMENTE la arquitectura de P2 y usando el hook
que elegí: [PEGAR HOOK].

Formato de salida: bloques con marca de tiempo, texto para locución en limpio, y entre
corchetes las indicaciones visuales. Ejemplo:

[00:00] [PLANO: cifra en pantalla, fondo negro]
Texto de locución aquí.

Restricciones de escritura:
- {{DURACION}} equivale a 150 palabras por minuto de locución. Ajusta el conteo.
- Ninguna afirmación cuantitativa fuera del dossier P1.
- Cada paso del procedimiento termina diciendo qué pasa si te lo saltas.
- El bloque de caso debe contener la mayor densidad de valor del video.
- Cierra el loop mayor de forma explícita y literal: el espectador debe reconocer que
  se le está pagando la promesa del segundo 40.
- El cierre es un puente a un video concreto, no un CTA genérico.
- Indicación visual cada 8-12 segundos de locución.

Escribe para el oído, no para el ojo. Si una frase se entiende mejor leída que escuchada,
está mal escrita.
```

---

## P5 — Auditoría adversarial de retención (el paso que casi nadie da)

*Este prompt es el que separa un guion de IA de un guion publicable. Ábrelo en una conversación NUEVA, sin el contexto del guion, para que Claude no defienda su propio trabajo.*

```
Eres un analista de retención de YouTube, escéptico y sin interés en agradar. Te doy un
guion que NO escribiste. Tu único trabajo es encontrar dónde se va la audiencia.

Recórrelo en bloques de 15 segundos. Para cada bloque entrega:
segundo | riesgo de abandono (ALTO/MEDIO/BAJO) | la razón exacta | la corrección mínima

Marca ALTO siempre que encuentres: contexto antes de valor, una frase de más de 25
palabras, un resumen de lo ya dicho, una promesa cerrada sin abrir otra, una transición
sin tensión, un dato sin consecuencia, o cualquier término de esta lista:
[pegar lista negra de 03-arquitectura-de-retencion.md §6].

Después de la tabla:
1. Nombra el punto exacto donde este guion pierde más audiencia y por qué.
2. Reescribe SOLO ese fragmento.
3. Responde PASA o FALLA a cada línea del checklist de 03 §7. No matices: binario.

No elogies nada. No resumas el guion. Si el guion está bien en un tramo, no lo menciones.
```

---

## P6 — Títulos: 20 candidatos en 5 familias

```
Escribe 20 títulos para este video. Cuatro por familia:

1. PROCEDIMIENTO — "Cómo [resultado concreto] con IA (sin [fricción])"
2. ERROR/COSTE — el error que comete el espectador y lo que le cuesta
3. CONTRADICCIÓN — contra la creencia dominante del nicho
4. ESPECIFICIDAD EXTREMA — con cifra, plazo o caso nombrado
5. IDENTIDAD — le habla a quién es, no a qué quiere

Reglas:
- Máximo 60 caracteres. Los primeros 40 deben funcionar solos (móvil corta ahí).
- La keyword objetivo {{KEYWORD}} aparece completa y natural en al menos 8 de los 20.
- Prohibidos: MAYÚSCULAS completas, más de un signo de exclamación, "increíble",
  "no vas a creer", "definitivo", "2026" como muleta.
- Ninguna promesa que el guion no cumpla. Un título que sobrepromete mata la retención
  en el segundo 20 y el algoritmo lo registra.

Entrega los 20, después ordena tus 5 mejores y justifica cada uno en una línea:
qué curiosidad abre y a quién excluye (un buen título excluye a alguien).
```

**Validación externa obligatoria:** pasa los 5 finalistas por `vidiq_score_title` (long-form). En la muestra medida el 16-09-2026, el patrón *sustantivo concreto + procedimiento + eliminación de fricción* puntuó 82; el de experiencia personal, 79; el aforismo, 76. Es una hipótesis de n=3, no una ley: **decide con el score, no con el gusto**, y registra el resultado en la ficha del video.

---

## P7 — Concepto de thumbnail

```
Diseña 5 conceptos de miniatura para este video. Para cada uno:

- IMAGEN CENTRAL: un solo sujeto, descrito para prompt de Midjourney/Flux.
- TEXTO: máximo 4 palabras. Debe COMPLETAR el título, no repetirlo.
- TENSIÓN VISUAL: qué contradicción o consecuencia se lee en 0.4 segundos.
- LECTURA A 120 PX: describe qué se distingue al tamaño real en móvil.
- QUÉ NO APARECE: lo que hay que eliminar para que el sujeto principal domine.

Reglas: un solo foco. Máximo tres colores dominantes. Sin flechas rojas ni círculos rojos
salvo que señalen algo que importa de verdad. Sin caras genéricas de IA con expresión de
sorpresa: es la firma visual del contenido automatizado y el espectador ya la filtra.

Señala cuál de los 5 funciona mejor JUNTO al título elegido, entendiendo que título y
miniatura son una sola unidad de comunicación: si dicen lo mismo, uno de los dos sobra.
```

---

## P8 — Descripción, capítulos y metadatos

```
Genera el paquete de publicación:

1. DESCRIPCIÓN. Primeras 2 líneas (lo visible antes de "más"): reformulan la promesa e
   incorporan {{KEYWORD}} de forma natural. Después: 3 párrafos cortos sobre qué resuelve
   el video, para quién es y para quién no.
2. CAPÍTULOS con marca de tiempo. Cada título de capítulo debe dar curiosidad, no
   describir ("El paso que todos saltan" gana a "Paso 3").
3. 15 TAGS: 5 de la keyword principal y sus variantes, 5 semánticos del tema,
   5 de la categoría amplia.
4. TEXTO FIJADO EN COMENTARIOS: una pregunta concreta que solo pueda responder alguien
   que vio el video completo. Es señal de engagement y filtro de comentarios vacíos.
5. CAPTURA DE EMAIL: una línea que ofrezca el recurso descargable del video, redactada
   como continuación del contenido, no como publicidad.
```

---

## P9 — Reempaquetado (1 video → 6 piezas)

```
Del guion aprobado, extrae:

1. Tres SHORTS de 45-60 s. Cada uno debe ser autónomo: gancho propio, una sola idea,
   y un cierre que no dependa del video largo. No cortes el video largo: reescribe.
2. Un CARRUSEL de 8 diapositivas (LinkedIn): una idea por diapositiva, la primera es
   el gancho, la última es la acción.
3. Un EMAIL de 250 palabras que entregue el valor del video sin obligar a verlo,
   y que termine enlazándolo para quien quiera el procedimiento completo.

Cada pieza se escribe para su plataforma. Prohibido el recorte mecánico: un fragmento
del guion largo pegado en un Short se nota en los primeros 2 segundos y no retiene.
```

---

## P10 — Puente al avatar docente (A2)

*Usar cuando el tema tenga tracción evidente con formadores. Produce el bloque de 8:00-9:30.*

```
Escribe el bloque de transferencia de este video, 60-90 segundos, dirigido a quien tiene
que ENSEÑAR esto a un equipo o a un aula, no solo aplicarlo.

Debe contener, en este orden:
1. El error de transferencia: por qué mostrar la herramienta no produce adopción.
2. La secuencia de enseñanza en 3 pasos, con el criterio observable de que cada paso
   se logró (qué ves hacer a la persona, no qué dice que entendió).
3. La evaluación: cómo sabes en 5 minutos si alguien puede hacer esto sin ti.
4. El fallo previsible: dónde se rompe la adopción a las dos semanas, y el remedio.

Sin jerga pedagógica. Cada afirmación debe poder ejecutarse el lunes por la mañana.
```

---

## P11 — El caso como relato de reversión

*Aplica al bloque 3 del guion (5:30–8:00). Nace del barrido de `datos/faceless-historias-animacion-2026-09-16.md`: el mecanismo narrativo con más tracción en español ahora mismo es el relato de reversión, y funciona igual en una empresa que en una familia.*

```
Convierte el caso de este video en un RELATO DE REVERSIÓN de 2 a 3 minutos.
No es un ejemplo ilustrativo: es una historia con giro.

Estructura obligatoria:
1. SITUACIÓN ESTABLE, con un detalle concreto que la haga real (una cifra, un
   cargo, una hora del día, un nombre de proceso). 20 segundos como máximo.
2. LA GRIETA. Algo que ya estaba mal y nadie miraba. Se nombra, no se explica.
3. EL COSTE, con número. Horas perdidas, dinero, un cliente, una persona que
   se fue. Sin cifra no hay reversión, hay anécdota.
4. EL GIRO. Qué cambió exactamente, y por qué funcionó cuando lo obvio no.
5. EL ESTADO NUEVO, medido contra el punto 1 con la misma unidad.

Reglas duras:
- El caso ocurre en un negocio radicado en EE.UU. o Puerto Rico (01 §6.4).
  Cifras en USD sin conversión.
- Prohibido inventar la empresa, la persona o el número. Si el caso es real,
  se anonimiza pero no se adorna. Si es compuesto, se dice en el audio:
  "es un caso compuesto a partir de varios que he visto".
- El protagonista es el espectador, no la herramienta. La IA es lo que pasó,
  no quién actuó.
- Sin moraleja explícita al final. El espectador saca la conclusión; si se la
  dices, la desactivas.

Entrega el relato y, debajo, en una línea: cuál es la reversión y en qué
segundo cae.
```

**Por qué funciona, con evidencia:** canales de 1,750 a 7,490 suscriptores usando este mecanismo con encuadre de empresa hacen entre 28K y 79K vistas por video. Uno de ellos, *Lágrimas de Hierro* (1,750 subs), está categorizado como **Business** y titula con la cifra dentro del propio título. Ver el anexo para las cifras completas.

**Límite:** el mecanismo se toma prestado; el modelo de negocio de esos canales, no. Operan en categorías de RPM bajo, sin marca y sin producto. Se roba la técnica narrativa, no la estrategia.

---

## P12 — Corto vertical para TikTok, Reels y Shorts

*El prompt principal si trabajas en formato corto (`08-formato-corto.md`). Sustituye a P2–P4, no los complementa: la arquitectura del largo no aplica en 50 segundos.*

```
Escribe 5 cortos verticales de 45 a 55 segundos sobre: {{TEMA}}.
Cada uno desarrolla UNA sola idea. Si el tema da para tres pasos, son tres
cortos distintos, nunca un corto con tres pasos.

Para cada corto entrega esta estructura, con marca de tiempo:

[0:00-0:02] FOTOGRAMA CERO
  - TEXTO EN PANTALLA: máximo 7 palabras, dice ya el beneficio o el error.
  - IMAGEN: qué se ve exactamente.
  Prueba que debe pasar: si congelas este fotograma y lo miras sin sonido,
  ¿se entiende de qué va? Si no, reescríbelo.

[0:02-0:06] COSTE O CONTRADICCIÓN
  Una frase, máximo 12 palabras, con cifra o con el error que comete quien mira.

[0:06-0:35] LA ÚNICA COSA
  El paso, demostrado. Indica qué se ve en pantalla en cada momento.
  Un corte visual cada 2-3 segundos: enuméralos.

[0:35-0:48] LA PRUEBA
  Qué produjo: minutos, dólares, el resultado visible. Se muestra, no se promete.

[0:48-0:55] CIERRE EN BUCLE
  Una frase que enlace con el fotograma cero, de modo que si el vídeo se
  reinicia parezca continuo.
  PROHIBIDO: "sígueme", "dale like", "comenta abajo", "link en bio".

Después de los 5 cortos, entrega para cada uno:
- TÍTULO PARA YOUTUBE SHORTS con la keyword objetivo (Shorts sí se busca).
- PIE PARA TIKTOK: coloquial, el gancho en las primeras 4 palabras, 3-5 hashtags.
- PIE PARA INSTAGRAM: una frase con gancho, hashtags al final.
- FOTOGRAMA DE PORTADA sugerido para la cuadrícula de Instagram.

Reglas transversales:
- Escrito para verse EN SILENCIO. Todo lo esencial va en texto en pantalla.
- El caso ocurre en un negocio de EE.UU. o Puerto Rico. Cifras en USD sin conversión.
- Ninguna cifra que no esté en el dossier P1. Sin dossier, no hay cifra.
- Frases de 8 a 12 palabras. En vertical, una frase larga es una salida.
```

**Encadenado con `09-formato-y-estilo.md`:** cada corto pertenece a una de las tres series, y el prompt debe recibir cuál. Añade al principio: `SERIE: [EL ERROR DE $ | HAZLO EL LUNES | TU EQUIPO NO LO USA]`, y exige la apertura fija y el cierre en bucle de esa serie tal como los define `09 §4`. Un corto sin serie no se escribe.

**Encadenado con P1:** el dossier sigue siendo obligatorio. Cinco cortos mal documentados propagan un error inventado cinco veces y a más gente que un solo largo.

**Encadenado con P5:** la auditoría adversarial se hace igual, en conversación nueva, con una pregunta distinta: *¿en qué segundo exacto deslizo el dedo, y por qué?*

---

## Uso en lote (día 1 del ciclo, ver `04-pipeline-de-produccion.md`)

Una conversación **por video**, nunca una conversación con diez videos: el contexto se contamina y los guiones empiezan a parecerse entre sí, lo que destruye la variedad de hooks. La instrucción de proyecto se define una sola vez y se reutiliza.
