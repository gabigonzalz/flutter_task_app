# Task App - Organizador de Tareas

Una aplicación móvil desarrollada con Flutter que te ayuda a organizar tus tareas diarias y te mantiene motivado con frases inspiradoras.

## 📱 Características

- Lista de tareas con persistencia local
- Frases motivacionales aleatorias
- Interfaz intuitiva y fácil de usar
- Almacenamiento local usando SharedPreferences
- Diseño modular y escalable

## 🚀 Comenzando

### Prerrequisitos

- Flutter (última versión estable)
- Dart SDK
- Android Studio/VS Code
- Git

### Instalación

1. Clona el repositorio
```bash
git clone https://github.com/tuusuario/task-app.git
```

2. Navega al directorio del proyecto
```bash
cd task-app
```

3. Instala las dependencias
```bash
flutter pub get
```

4. Ejecuta la aplicación
```bash
flutter run
```

## 📁 Estructura del Proyecto

```
lib/
├── main.dart
├── screens/
│   ├── welcome_screen.dart
│   ├── task_list_screen.dart
│   └── motivation_screen.dart
├── services/
│   └── task_service.dart
└── models/
    └── motivation_phrases.dart
```

## 📦 Dependencias

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.0.0
```

## 🛠️ Funcionalidades principales

### Pantalla de Bienvenida
- Navegación a la lista de tareas
- Acceso a frases motivacionales

### Lista de Tareas
- Agregar nuevas tareas
- Eliminar tareas existentes
- Persistencia de datos local
- Vista de lista vacía

### Frases Motivacionales
- Frases aleatorias inspiradoras
- Actualización de frases con un botón
- Diseño limpio y centrado

## 🔧 Configuración del Desarrollo

Para modificar el proyecto:

1. Asegúrate de tener el entorno de Flutter configurado
2. Abre el proyecto en tu IDE favorito
3. Sigue las guías de estilo de Dart/Flutter

## 📱 Cómo añadir nuevas pantallas

1. Crea un nuevo archivo en la carpeta `screens/`
2. Implementa tu widget (Stateless o Stateful)
3. Agrega la navegación en `welcome_screen.dart`
4. Actualiza las rutas según sea necesario

Ejemplo de nueva pantalla:
```dart
class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nueva Pantalla')),
      body: Center(
        child: Text('Contenido de la nueva pantalla'),
      ),
    );
  }
}
```

## 🤝 Contribuir

1. Fork el proyecto
2. Crea tu Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push al Branch (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## ⚙️ Personalización

Puedes personalizar:
- Colores del tema en `main.dart`
- Frases motivacionales en `motivation_phrases.dart`
- Estilos de texto y diseño en cada pantalla

## 📝 Notas de desarrollo

- La app usa SharedPreferences para almacenamiento local
- El diseño sigue los principios de Material Design
- La arquitectura está modularizada para facilitar el mantenimiento
- Se implementan patrones de diseño Flutter estándar

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE.md](LICENSE.md) para detalles
