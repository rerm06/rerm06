# 07 — Métricas y reglas de decisión

Una métrica sin umbral de acción es decoración. Cada número de este documento tiene una **decisión** asociada.

> **Advertencia epistémica:** los umbrales de §2 son **[SUPUESTOS de arranque]**, no benchmarks publicados. Existen para que tengas un gatillo de acción desde el video 1, no para que persigas el número de otro canal. **A los 20 videos, sustitúyelos por tus propias medianas.** Ese es el único benchmark que importa: el algoritmo te compara contigo mismo y con tu categoría, no con un promedio global.

---

## 1. Puerta de publicación

Ningún video se programa sin estas cinco casillas en PASA:

- [ ] Checklist de retención `03 §7` completo, sin ningún FALLA.
- [ ] Título ≤60 caracteres, score de vidIQ ≥75, keyword ancla presente.
- [ ] Miniatura aprobada en la prueba de 120 px junto a competidores reales.
- [ ] Toda cifra del audio tiene fuente, o se declara como estimación **dentro del propio audio**.
- [ ] Fin de pantalla apuntando al video del puente + enlace de captura de email activo.

---

## 2. Umbrales operativos y su decisión

| Métrica | Umbral de alarma | Decisión forzada |
|---|---|---|
| Retención a 30 s | <60% | El hook falla. Reescribe los primeros 20 s con otro arquetipo de P3 en los siguientes 3 videos. |
| Retención a 30 s | ≥70% | El hook funciona. Registra el arquetipo y repítelo. |
| % medio visto (10–13 min) | <35% | Fallo de arquitectura, no de tema. Vuelve a P2: probablemente faltan loops entre 2:00 y 5:00. |
| % medio visto | ≥45% | Estructura sana. No la toques. |
| CTR (>1,000 impresiones) | <3% | Problema de paquete. Aplica el protocolo de `05 §4`. |
| CTR | >8% con retención <35% | **Sobrepromesa.** Es el peor estado posible: el algoritmo aprende a mostrar el video a gente que lo abandona. Corrige el título hacia abajo, no la miniatura. |
| Impresiones a 7 días | <2,000 | El tema no tiene demanda o la keyword está mal elegida. Vuelve a la investigación; no es un problema de calidad. |
| Emails / 1,000 vistas | <8 | La oferta no encaja o no es visible. Reescribe la línea de captura (P8 §5), no el video. |
| Duración media de visualización | Cae 2 videos seguidos | Revisa si estás alargando videos artificialmente. Un video de 9 minutos bien construido bate a uno de 13 rellenado. |

---

## 3. Tabla de diagnóstico cruzado (léela siempre en dos ejes)

CTR y retención **solo significan algo juntos**:

| | **Retención alta** | **Retención baja** |
|---|---|---|
| **CTR alto** | Escala: replica tema, formato y paquete. | Sobrepromesa. Ajusta el título a la baja y refuerza los primeros 60 s. |
| **CTR bajo** | Contenido bueno, empaquetado malo. El arreglo más barato del sistema: itera paquete (`05 §4`). | El tema no interesa a esta audiencia. No lo repitas; no inviertas más en él. |

El cuadrante inferior izquierdo es el más rentable: ya hiciste el trabajo caro (el contenido) y falta el barato (el paquete).

---

## 4. Revisión semanal (20 minutos, mismo día y hora)

1. Los 3 videos de la semana: CTR, retención a 30 s, % medio visto, emails captados.
2. Aplica §2: ¿alguna alarma activa? Ejecuta su decisión **esta semana**, no la siguiente.
3. Actualiza la biblioteca de patrones (`05 §5`).
4. Una sola pregunta escrita: *¿qué video de esta semana repetiría, y por qué exactamente?*

## 5. Revisión mensual (60 minutos)

1. Re-ejecuta la investigación de keywords (`datos/`). Anota qué se movió.
2. Recalcula tus medianas de CTR y retención. **Si tienes ≥20 videos, sustituye los umbrales de §2 por tus propias medianas.**
3. Revisa la economía real: emails captados → conversaciones → ventas. Si el canal crece en vistas pero no en esa cadena, el problema está en la oferta, no en el contenido, y ningún video más lo va a arreglar.
4. Decisión de continuidad por cluster temático: los clusters del calendario que estén sistemáticamente en el cuadrante inferior derecho de §3 se abandonan. Abandonar a tiempo es lo que libera capacidad para el cluster que sí funciona.

---

## 6. La métrica que gobierna a todas

Con el RPM medido para español (`01 §1`), la salud de este canal **no se lee en el panel de ingresos de YouTube**. Se lee en:

> **Emails calificados captados por cada 1,000 vistas × tasa de conversión a cliente.**

Un canal de 30,000 vistas al mes con 10 emails por mil y 4% de conversión produce ~12 clientes al mes. Bajo el RPM medido de $2.40, esas mismas 30,000 vistas producen ~$72 de AdSense. **Esa es la proporción que debe gobernar cada decisión de este sistema**, incluida la decisión de qué video hacer a continuación.
