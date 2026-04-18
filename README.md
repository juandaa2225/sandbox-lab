# sandbox-lab

Experimental repository for miscellaneous tests, prototypes, and quick explorations.

## Ver `index.html` como página web (local)

La forma más rápida es levantar un servidor local:

```bash
./scripts/preview_index.sh
```

Opcionalmente puedes indicar otro puerto:

```bash
./scripts/preview_index.sh 8080
```

Luego abre `http://127.0.0.1:8000/index.html` (o el puerto que uses).

## Ver `index.html` en GitHub Pages

Este repo incluye un workflow de Pages en `.github/workflows/pages.yml` que publica `index.html` como sitio estático.

1. Sube estos cambios al repositorio remoto.
2. En GitHub, ve a **Settings → Pages** y confirma que la fuente sea **GitHub Actions**.
3. Ejecuta el workflow manualmente desde **Actions** (o haz push a `main`).
4. Tu sitio quedará disponible en:
   - `https://<tu-usuario>.github.io/<tu-repo>/`
