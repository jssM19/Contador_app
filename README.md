# Contador Flutter 🔢

Aplicación móvil desarrollada en Flutter que implementa un contador interactivo,
como proyecto de práctica para el manejo de estado local con `setState` y
construcción de interfaces adaptables.

---

## 📱 Descripción

**Contador Flutter** es una aplicación sencilla pero completa que permite al
usuario incrementar, decrementar y reiniciar un valor numérico en tiempo real.
El color del número cambia dinámicamente según su valor, ofreciendo
retroalimentación visual inmediata.

Este proyecto fue desarrollado como parte de un plan de aprendizaje intensivo
de Flutter, enfocado en dominar los fundamentos del manejo de estado,
composición de widgets y buenas prácticas de desarrollo.

---

## ✨ Características

- ➕ **Incrementar** el contador con un botón flotante
- ➖ **Decrementar** el contador con un botón flotante
- 🔄 **Reiniciar** el contador a cero
- 🎨 **Color dinámico** según el valor:
  - 🟢 Verde cuando el valor es positivo
  - 🔴 Rojo cuando el valor es negativo
  - ⚫ Negro cuando el valor es cero
- 📐 Diseño adaptable a diferentes tamaños de pantalla
- 🌗 Integración con el tema del sistema mediante `ThemeData`

---

## 🛠️ Tecnologías utilizadas

- **Flutter** — Framework de desarrollo multiplataforma
- **Dart** — Lenguaje de programación
- **Material Design 3** — Sistema de diseño
- **Git & GitHub** — Control de versiones

---

## 🚀 Cómo ejecutar el proyecto

### Requisitos previos

Asegúrate de tener instalado:

- [Flutter SDK](htt3ps://flutter.dev/docs/get-started/install) (versión 3.0 o superior)
- [Dart SDK](https://dart.dev/get-dart) (incluido con Flutter)
- Un editor como [VS Code](https://code.visualstudio.com/) o [Android Studio](https://developer.android.com/studio)
- Un emulador o dispositivo físico para ejecutar la app

### Verifica tu instalación

```bash
flutter doctor
```

### Pasos para ejecutar

1. **Clona este repositorio:**

   ```bash
   git clone https://github.com/TU-USUARIO/contador.git
   ```

2. **Entra a la carpeta del proyecto:**

   ```bash
   cd contador
   ```

3. **Instala las dependencias:**

   ```bash
   flutter pub get
   ```

4. **Ejecuta la aplicación:**

   ```bash
   flutter run
   ```

La app se abrirá automáticamente en el emulador o dispositivo conectado.

---

## 📂 Estructura del proyecto

```
contador/
├── lib/
│   └── main.dart          # Punto de entrada y lógica de la app
├── android/               # Configuración nativa para Android
├── ios/                   # Configuración nativa para iOS
├── test/                  # Pruebas unitarias y de widgets
├── pubspec.yaml           # Dependencias y metadatos del proyecto
└── README.md              # Este archivo
```

---

## 🧠 Conceptos de Flutter aplicados

Este proyecto demuestra el uso correcto de los siguientes conceptos:

| Concepto               | Descripción                                        |
| ---------------------- | -------------------------------------------------- |
| `StatelessWidget`      | Para widgets que no cambian con el tiempo          |
| `StatefulWidget`       | Para widgets con estado mutable                    |
| `setState()`           | Método que notifica a Flutter para redibujar la UI |
| `State<>`              | Clase que contiene el estado mutable del widget    |
| `Theme.of(context)`    | Acceso al tema global de la aplicación             |
| Composición de widgets | `Column`, `Row`, `Padding`, `Spacer`               |
| `FloatingActionButton` | Botones de acción principales                      |

---

## 💡 ¿Qué aprendí con este proyecto?

- Manejo de estado local con `setState`
- Diferencias entre `StatelessWidget` y `StatefulWidget`
- Ciclo de vida de un `StatefulWidget`
- Composición de layouts con `Row`, `Column` y `Spacer`
- Uso de temas y estilos mediante `Theme.of(context)`
- Buenas prácticas de organización de código
- Flujo de trabajo con Git y GitHub

---

## 🔮 Próximas mejoras

- [ ] Implementar manejo de estado compartido con **Provider**
- [ ] Agregar pruebas unitarias y de widgets
- [ ] Añadir historial de valores anteriores
- [ ] Soportar modo oscuro
- [ ] Internacionalización (español / inglés)

---

## 👩‍💻 Autora

**Jessica Moreno**

- GitHub: [@jssM19](https://github.com/TU-USUARIO)
- LinkedIn: [Tu perfil](https://linkedin.com/in/tu-perfil)

---

## 📄 Licencia

Este proyecto es de uso libre para fines educativos y de aprendizaje.

---

⭐ Si te gustó este proyecto, ¡dale una estrella al repositorio!

# Contador_app
