# JARVIS University: app instalable

Archivos: index.html (la app), manifest.webmanifest + sw.js + icon-*.png (hacen que se pueda instalar), supabase.sql (tabla de sincronización).

## 1. Publicar la app (GitHub Pages, gratis)
1. En GitHub: New repository (público). Sube TODOS estos archivos, sin carpetas.
2. Settings → Pages → Branch `main`, carpeta `/ (root)` → Save.
3. En 1-2 minutos tendrás `https://TU-USUARIO.github.io/NOMBRE/`. La instalación solo funciona desde ese https, no abriendo el archivo del disco.
No subas nunca tus .ics ni copias de datos.

## 2. Instalarla
- Ordenador (Chrome o Edge): icono de instalar en la barra de direcciones.
- Android (Chrome): menú ⋮ → Instalar aplicación.
- iPhone (Safari): compartir → Añadir a pantalla de inicio.

## 3. Sincronizar móvil y ordenador (Supabase, plan gratuito)
1. supabase.com → New project (elige una región de la UE).
2. SQL Editor → pega el contenido de `supabase.sql` → Run.
3. Authentication → ajustes del proveedor Email: desactiva «Confirm email» si quieres entrar sin confirmar el correo (el nombre puede variar según la versión del panel).
4. Project Settings → API: copia la «Project URL» y la clave pública (anon o publishable). NUNCA uses la clave secreta ni la service_role.
5. En la app: Configuración → Cuenta y sincronización → pega URL y clave, escribe correo y contraseña → Crear cuenta. Repite en el otro dispositivo con «Entrar».

## Privacidad: léelo
- Cada usuario solo ve sus datos (reglas de seguridad por usuario), pero quien administra el proyecto de Supabase puede verlos en su panel, porque no están cifrados de extremo a extremo.
- Por eso: o cada persona crea su propio proyecto (lo más privado), o aceptáis que el dueño del proyecto puede verlos.
- Si dos dispositivos cambian datos a la vez sin conexión, gana el último que sincroniza.
- El plan gratuito de Supabase pausa proyectos inactivos; se reactiva desde su panel.
