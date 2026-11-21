# Soplos Icons — tema SVG para KDE, GNOME y XFCE

Tema de iconos vectoriales original inspirado visualmente en los colores Soplos Linux: 
carpetas vectoriales recreadas con la forma y colores de la referencia (pestaña gris elevada, reborde amarillo, cuerpo naranja), 
aplicaciones de volumen suave y pictogramas en grafito, blanco, naranja y rojo.

## Contenido

- Iconos SVG editables (sin PNGs ni imágenes raster incrustadas).
- Categorías Freedesktop: apps, places, devices, mimetypes, categories, actions, status y emblems.
- Variantes simbólicas para barras de herramientas e indicadores.
- Sin dependencias para los iconos propios. Iconos de aplicaciones no incluidos se completan mediante herencia de Kora Soplos, Adwaita, breeze o hicolor.
- Alias con nombres reales de aplicaciones GTK y Qt, en forma de enlaces simbólicos.

## Instalación para el usuario (sin sudo)

Extrae la carpeta `Soplos` en:

`~/.local/share/icons/Soplos/`

También puedes ejecutar desde la carpeta raíz del archivo descomprimido:

```bash
./install.sh
```

Después, selecciona **Soplos Modern Icons** en:

- **KDE Plasma:** Preferencias del sistema → Colores y temas → Iconos.
- **GNOME:** Ajustes avanzados (GNOME Tweaks) → Apariencia → Iconos.
- **XFCE:** Configuración → Apariencia → Iconos.

Para cambio por terminal (si ya está instalado):

```bash
# GNOME
 gsettings set org.gnome.desktop.interface icon-theme 'Soplos'
# XFCE
 xfconf-query -c xsettings -p /Net/IconThemeName -s 'Soplos'
```

En Plasma, conviene cambiarlo desde la interfaz de configuración para que se
actualicen todos los componentes. Cierra y vuelve a abrir el gestor de archivos si
no ves los nuevos iconos de inmediato.

## Comprobación

```bash
# Vista del tema y directorios
cat ~/.local/share/icons/Soplos/index.theme
# GTK: opcional (se requiere gtk-update-icon-cache)
gtk-update-icon-cache -f ~/.local/share/icons/Soplos
# Referencias de iconos rotas (debe mostrar 0)
find -L ~/.local/share/icons/Soplos -type l | wc -l
```

## Cambiar los gráficos

Cada archivo está en `scalable/` o `symbolic/` y es SVG editable con Inkscape.
Las diferentes denominaciones de una misma aplicación pueden ser enlaces
simbólicos que apuntan al mismo dibujo. Modifica el archivo de destino para
modificar todas sus variantes simultáneamente.

## Licencia

El tema no incorpora archivos de otros temas ni paquetes. 
Las marcas y nombres de los programas, así como la identidad Soplos, pertenecen a sus respectivos titulares.
La licencia de redistribución de la identidad Soplos debe decidirla Sergi.

Tema producido para el proyecto Soplos Linux a partir de su referencia visual.
