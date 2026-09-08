import 'package:flutter/material.dart';

/// Pantalla 5: Listado de momentos registrados desplegados en una nube de etiquetas.
/// Utiliza Wrap para la distribución dinámica en múltiples líneas.
class PantallaMomentosWrap extends StatelessWidget {
  const PantallaMomentosWrap({super.key});

  // Datos simulados de momentos registrados en campo
  static const List<String> _momentosRegistrados = [
    'Antes de tocar al paciente',
    'Antes de realizar una tarea limpia/aséptica',
    'Después del riesgo de exposición a fluidos',
    'Después de tocar al paciente',
    'Después del contacto con el entorno del paciente',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56), // Verde institucional
        title: const Text('Momentos Registrados', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'MOMENTOS OBSERVADOS',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F6E56),
                letterSpacing: 1.0,
              ),
            ),
            const SizedBox(height: 12),

            // Distribución dinámica de etiquetas sin desbordamiento horizontal
            Wrap(
              spacing: 8.0, // Espaciado horizontal entre chips
              runSpacing: 10.0, // Espaciado vertical entre filas
              children: _momentosRegistrados
                  .map((momento) => _etiquetaMomento(momento))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  /// Construye la tarjeta individual de la etiqueta siguiendo el verde institucional
  Widget _etiquetaMomento(String texto) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFF0F6E56).withOpacity(0.12),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: const Color(0xFF0F6E56), width: 1.0),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 12,
          color: Color(0xFF0F6E56),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}