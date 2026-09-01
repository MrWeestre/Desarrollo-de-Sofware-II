import 'package:flutter/material.dart';
import 'pantalla_bienvenida.dart';
import 'tarjeta_momentos.dart';

void main() {
  // Punto de entrada principal de la aplicación Flutter
  runApp(const AppAuditoriaHigiene());
}

class AppAuditoriaHigiene extends StatelessWidget {
  const AppAuditoriaHigiene({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Desactiva la etiqueta 'DEBUG' en la esquina superior derecha
      debugShowCheckedModeBanner: false,
      title: 'Auditoría de Higiene de Manos',
      // Definición de la pantalla inicial con el color institucional
      home: Scaffold(
        backgroundColor: const Color(0xFF006A4E), // Verde institucional
        body: SafeArea(
          // Mantiene el componente a probar (se puede intercambiar con PantallaBienvenida)
          child: const TarjetaCincoMomentos(), 
        ),
      ),
    );
  }
}