#!/usr/bin/env bash
# Crea el andamiaje de un video nuevo a partir de las plantillas.
# Uso: ./scripts/nuevo-video.sh 07 "automatizar-gmail-con-ia"
set -euo pipefail

if [ $# -ne 2 ]; then
  echo "Uso: $0 <numero> <slug>" >&2
  echo "Ej.: $0 07 automatizar-gmail-con-ia" >&2
  exit 1
fi

NUM="$1"
SLUG="$2"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIR="$ROOT/videos/${NUM}-${SLUG}"

if [ -e "$DIR" ]; then
  echo "Ya existe: $DIR — no se sobrescribe nada." >&2
  exit 1
fi

mkdir -p "$DIR"/{activos,audio,exportado}
cp "$ROOT/plantillas/guion-maestro.md" "$DIR/guion.md"
cp "$ROOT/plantillas/ficha-de-video.md" "$DIR/ficha.md"
cat > "$DIR/dossier.md" <<'DOSSIER'
# Dossier de investigación (salida de P1)

## 1. Hechos verificables (máx. 12, con fuente y fecha)

## 2. Zona de incertidumbre

## 3. El error dominante y su coste

## 4. El procedimiento (pasos + punto de fallo)

## 5. Objeciones del experto (3) y respuesta honesta

## 6. Vacíos — datos que faltan antes de escribir
DOSSIER

echo "Creado: $DIR"
echo "Siguiente paso: P1 (dossier) en 02-biblioteca-de-prompts.md — no escribas guion antes."
