# Sistema de canal faceless — IA aplicada a negocios y educación

Sistema operativo completo para producir, publicar y medir un canal de YouTube en español sobre IA aplicada a negocios y educación. No es una guía de lectura: es un procedimiento con puertas de control, umbrales de decisión y plantillas ejecutables.

**Construido sobre datos medidos, no sobre supuestos.** La investigación de mercado (vidIQ, 2026-09-16) está en `datos/` y es la única fuente de cifras del sistema. Todo lo demás está marcado como `[INFERENCIA]` o `[SUPUESTO]`.

---

**Formato principal: vertical corto** (`08`), publicado en TikTok, Instagram Reels y YouTube Shorts. El sistema de vídeo largo (`03`–`06`) no se descarta: **el corto es el laboratorio, el largo es la conversión.** Un tema se prueba en corto por 48 horas y solo asciende a largo si supera sus umbrales.

**Audiencia objetivo: hispanohablantes en EE.UU. y Puerto Rico** (decidido, `01 §6`). El sistema está anclado a esa geografía: contexto de negocio estadounidense en cada caso, cifras en USD sin conversión, y el inglés aplazado como carril de reempaquetado, no como pivote.

## Las tres conclusiones que cambian el plan por defecto

1. **El RPM del "triángulo de alto RPM" no aplica en español.** Medido: Business·es·MX rinde **$2.40 RPM medio** frente a **$8.00** en Business·en·US, con los mismos parámetros. AdSense no es el modelo de negocio; es el subsidio de adquisición. → `01 §1`
2. **"IA en educación" no se busca.** Casi todas sus variantes largas están por debajo de 750 búsquedas/mes. Mientras tanto `ganar dinero con ia` crece **+96%** y `herramientas de ia` **+51%**. La educación no es el tema: es el método. → `01 §2`
3. **Un canal de 1,250 suscriptores hizo 59,377 vistas con un explicador de 16 minutos** (breakout 292×). El formato rompe antes que la autoridad. Es replicable desde el mes 1. → `01 §3`

---

## Orden de lectura y ejecución

| Documento | Qué resuelve | Cuándo se usa |
|---|---|---|
| `01-estrategia-y-nicho.md` | Posicionamiento, avatares, monetización, geografía | **Antes del video 1.** Contiene una decisión que bloquea todo lo demás. |
| `02-biblioteca-de-prompts.md` | 12 prompts encadenados P1→P12 (P12 produce los cortos por serie) | Cada pieza, día de guion |
| `03-arquitectura-de-retencion.md` | Mapa de segundos, loops, puntos de fuga, checklist binario | Cada guion, sin excepción |
| `04-pipeline-de-produccion.md` | Stack, ciclo de 4 días, 3 puertas de calidad | Cada ciclo de 10 videos |
| `05-ctr-titulos-y-thumbnails.md` | Anatomía de título y miniatura, protocolo de iteración | Antes de publicar y a las 48 h |
| `06-calendario-90-dias.md` | 36 videos anclados a keywords medidas | Planificación trimestral |
| `07-metricas-y-decisiones.md` | Umbrales con decisión forzada, diagnóstico cruzado | Revisión semanal y mensual |
| **`08-formato-corto.md`** | Vertical corto para TikTok/Reels/Shorts: arquitectura de 50 s, un máster para tres plataformas, embudo y métricas propias | **Formato principal.** Cada corto |
| **`09-formato-y-estilo.md`** | La biblia: firma fija, registro de voz, tres series con función de embudo, guiones de ejemplo, protocolo de validación | **Antes del corto 1** y en cada revisión de semana 5 y 10 |
| **`10-oferta-y-embudo.md`** | Qué se vende, la escalera de cuatro escalones, el diagnóstico de 12 preguntas, el método de precio y las bios | **Antes del corto 1.** Sin esto el embudo no existe |
| `datos/` | Investigación cruda verificada | Re-ejecutar cada 90 días |

## Uso

```bash
./scripts/nuevo-video.sh 07 automatizar-gmail-con-ia
```

Crea `videos/07-automatizar-gmail-con-ia/` con `dossier.md`, `guion.md`, `ficha.md` y las carpetas de activos. El orden es siempre **dossier → arquitectura → hook → guion → auditoría adversarial**; escribir guion antes del dossier es la causa habitual de contenido que suena a IA.

## Reglas que no se negocian

1. **Ninguna cifra sin fuente.** En el dossier, en el guion y en el audio. Si no se puede verificar, el guion se escribe sin ella.
2. **La auditoría adversarial (P5) se hace en conversación nueva.** Un modelo que revisa su propio guion lo defiende.
3. **Ningún video se publica con un FALLA** en el checklist de `03 §7`.
4. **El video 1 de cada lote se publica 7 días antes que el resto.** Evita repetir un error estructural diez veces.
5. **Una sola variable por iteración de CTR**, máximo dos iteraciones por video.
6. **A los 20 videos, los umbrales prestados de `07 §2` se sustituyen por tus propias medianas.**

## Qué falta y quién lo decide

- ~~Audiencia geográfica~~ → **decidido: EE.UU. y Puerto Rico** (`01 §6`).
- ~~Decisión de monetización~~ → **decidida: adopción, no automatización** (`10 §1`).
- **Costes del stack** (`04 §1`): deliberadamente vacíos. Se consultan el día del montaje y se anotan; un presupuesto inventado es peor que ninguno.
- **Los cuatro activos de `10 §7`**: diagnóstico, página, correo de entrega y bios. Es lo único que bloquea el corto 1.
