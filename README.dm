# Proyecto VR + Háptica (Unity)

## Descripción
Proyecto de videojuego en Realidad Virtual desarrollado en Unity, enfocado en una experiencia inmersiva dentro de un laboratorio industrial corrompido.

El jugador controla una unidad robótica mediante dirección de mirada (gaze) y movimiento básico, utilizando un sistema de energía para interactuar con el entorno, combatir enemigos y avanzar en el nivel.

## Objetivo del proyecto
Desarrollar un prototipo funcional de VR que integre:

- Mecánicas de interacción mediante mirada
- Sistema de energía unificado (combate + entorno)
- Exploración en un entorno controlado
- Feedback háptico básico

## Mecánicas principales (resumen)
- Gaze (mirada): permite drenar, transferir o sobrecargar energía en objetivos.
- Interacción energética:
  - Destruir enemigos
  - Activar sistemas (puertas, paneles)
  - Desactivar módulos de fabricación
  - Reactivar unidades aliadas
- Movimiento:
  - Desplazamiento básico (adelante/atrás)
  - Giro suave (torque)
  - Diseñado para estabilidad en VR

## Tecnologías
- Unity Editor: 6000.3.7f1
- Plataforma VR: Google Cardboard
- Control de versiones: Git + Git LFS

## Requisitos
- Unity Hub
- Unity 6000.3.7f1
- Git: https://git-scm.com/downloads
- Git LFS: https://git-lfs.com/
- Dispositivo móvil compatible con VR (opcional)

### Requisitos adicionales (equipo de Háptica)
- Arduino IDE: https://www.arduino.cc/en/software
- Soporte de placa ESP32 en Arduino IDE (Boards Manager): https://github.com/espressif/arduino-esp32
- Pruebas de comunicacion serial por WiFi entre Unity y ESP32.
- Red local estable para pruebas (PC y ESP32 en la misma red).

## Configuración inicial

### 1) Instalar Git y Git LFS
Instalar Git y Git LFS desde sus sitios oficiales.

### 2) Configurar Git LFS en tu equipo (solo una vez por máquina)
```bash
git lfs install
```

### 3) Clonar el repositorio
```bash
git clone https://github.com/LeonardoMendez-FI/UnityHapticVR_Proyect.git
cd NewHapticVRProyect
git lfs pull
```

### 4) Abrir en Unity
1. Abrir Unity Hub.
2. Add Project -> seleccionar la carpeta del repositorio.
3. Verificar que abra con la versión 6000.3.7f1.

## Sobre Google Cardboard (importante)
- No es necesario que cada integrante lo instale manualmente si ya está agregado en el proyecto y se versionaron los cambios de paquetes.
- Si Cardboard ya está en la configuración del proyecto, Unity descargará las dependencias automáticamente al abrir.
- Cada integrante sí debe tener su entorno local listo para Android (módulos de Android en Unity Hub, SDK/NDK/JDK según configuración).

## Flujo de trabajo con Git

### Actualizar rama
```bash
git checkout <master>
git pull origin <master>
```

### Agregar cambios
```bash
git add .
```

### Commit
```bash
git commit -m "feat: descripcion corta"
```

### Push
```bash
git push origin <master>
```

## Políticas del repositorio
- No modificar .gitignore ni .gitattributes sin acuerdo del equipo.
- Mantener commits claros y descriptivos.
- Evitar subir archivos temporales o caché.

## Recomendaciones de desarrollo (obligatorias para integracion)
- Documentar scripts nuevos y cambios importantes (proposito, entradas, salidas, eventos).
- Probar primero en carpeta de testing antes de integrar a escenas principales.
- Usar Assets/5. Test para validaciones tecnicas y prototipos.
- Solo pasar a Assets/1. Scenes cuando la funcionalidad sea estable y revisada por el equipo.
- Si una feature depende de otra, indicar en el PR o commit: depende de + responsable.

## Notas
Este README está enfocado en el uso técnico del proyecto. Para detalles de diseño, mecánicas completas y planificación, consultar el documento de diseño del juego (GDD).

