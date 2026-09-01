import 'package:flutter/material.dart';
import 'widgets_comunes.dart';

class PantallaPersonal extends StatelessWidget {
  const PantallaPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56),
        title: const Text('Observador y personal observado'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _tituloSeccion('OBSERVADOR'),
              tarjetaCampo('DNI O CARNET DE EXTRANJERÍA', '45821347'),
              tarjetaCampo(
                'NOMBRE COMPLETO DEL OBSERVADOR',
                'Juan Carlos Pérez Gómez',
              ),
              const SizedBox(height: 16),
              _tituloSeccion('PERSONAL OBSERVADO'),
              tarjetaCampo('DNI O CARNET DE EXTRANJERÍA', '72184930'),
              tarjetaCampo(
                'NOMBRE COMPLETO DEL OBSERVADO',
                'María Elena Torres Ruiz',
              ),
              tarjetaCampo('CATEGORÍA PROFESIONAL', 'Enfermero/a'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tituloSeccion(String texto) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 4),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Color(0xFF0F6E56),
          letterSpacing: 1.0,
        ),
      ),
    );
  }
}