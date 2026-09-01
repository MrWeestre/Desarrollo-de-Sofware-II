import 'package:flutter/material.dart';

class TarjetaCincoMomentos extends StatelessWidget {
  const TarjetaCincoMomentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Quita las líneas amarillas sin alterar el diseño
      child: Container(
        // JUSTIFICACIÓN: Se usa EdgeInsets.symmetric para controlar por separado
        // el margen horizontal (pantallas) y vertical.
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        // JUSTIFICACIÓN: Se usa EdgeInsets.all para dar un relleno uniforme
        // interno alrededor de todo el contenido de la tarjeta.
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Los 5 Momentos para la Higiene de Manos',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F4C3A),
              ),
            ),
            const SizedBox(height: 16),
            _itemMomento(1, Icons.person, 'Antes del contacto con el paciente'),
            _itemMomento(
              2,
              Icons.add_circle_outline,
              'Antes de realizar una tarea aséptica',
            ),
            _itemMomento(
              3,
              Icons.warning_amber_rounded,
              'Después del riesgo de exposición a fluidos corporales',
            ),
            _itemMomento(
              4,
              Icons.person,
              'Después del contacto con el paciente',
            ),
            _itemMomento(
              5,
              Icons.single_bed,
              'Después del contacto con el entorno del paciente',
            ),
          ],
        ),
      ),
    );
  }

  // Método extraído según especificación de la Sesión 5 (Sección 2.6-b)
  Widget _itemMomento(int numero, IconData icono, String texto) {
    return Padding(
      // JUSTIFICACIÓN: Se usa EdgeInsets.only para aplicar un espaciado
      // únicamente en la parte inferior (bottom) entre cada ítem.
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Container(
            width: 26,
            height: 26,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xFFE2F1EC),
              shape: BoxShape.circle,
            ),
            child: Text(
              '$numero',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F4C3A),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Icon(icono, color: const Color(0xFF0F4C3A)),
          const SizedBox(width: 12),
          // SE APLICA SESIÓN 6: Restricción acotada para evitar RenderFlex Overflow
          Expanded(
            child: Text(
              texto,
              style: const TextStyle(fontSize: 14, color: Color(0xFF333333)),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}