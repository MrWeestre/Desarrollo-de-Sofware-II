import 'package:flutter/material.dart';
import 'widgets_comunes.dart';

class PantallaMomentos extends StatelessWidget {
  const PantallaMomentos({super.key});

  // Momentos registrados en una auditoría de ejemplo.
  static const List<String> _momentosRegistrados = [
    'Antes de tocar al paciente',
    'Antes de realizar una tarea limpia/aséptica',
    'Después del riesgo de exposición a fluidos',
    'Después de tocar al paciente',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56),
        title: const Text(
          'Momentos registrados',
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Título de sección.
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

            // ============================================
            // WRAP
            // ============================================
            Wrap(
              spacing: 8,
              runSpacing: 8,

              children: _momentosRegistrados
                  .map(
                    (m) => _etiquetaMomento(m),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  // Construye una etiqueta individual.
  Widget _etiquetaMomento(String texto) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),

      decoration: BoxDecoration(
        color: const Color(0xFF0F6E56)
            .withOpacity(0.10),

        borderRadius: BorderRadius.circular(20),

        border: Border.all(
          color: const Color(0xFF0F6E56),
        ),
      ),

      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 12,
          color: Color(0xFF0F6E56),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}