import 'package:flutter/material.dart';

class TarjetaCincoMomentos extends StatelessWidget {
  const TarjetaCincoMomentos({super.key});

  @override
  Widget build(BuildContext context) {
    // FONDO DE PANTALLA NEUTRO:
    // Un beige suave / blanco cálido (no saturado) para descansar la vista.
    return Scaffold(
      backgroundColor: const Color(0xFFF4F1EA), // Fondo beige neutro suave
      body: SafeArea(
        child: Center(
          // SingleChildScrollView evita errores de espacio y ayuda a centrar verticalmente
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            child: Container(
              // PADDING INTERNO: Incrementado para darle presencia y volumen a la tarjeta
              padding: const EdgeInsets.all(24.0),
              
              // DECORACIÓN DE LA TARJETA EN TONO BEIGE / BLANCO CÁLIDO
              decoration: BoxDecoration(
                color: const Color(0xFFFBF9F5), // Beige cálido tenue para la tarjeta
                borderRadius: BorderRadius.circular(20.0), // Bordes redondeados más suaves
                border: Border.all(
                  color: const Color(0xFFE6E1D6), // Borde sutil para darle definición
                  width: 1.2,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0D000000), // Sombra hiper suave para elevación limpia
                    blurRadius: 15.0,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Se ajusta al tamaño total de sus hijos
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TÍTULO CON FUENTE MÁS GRANDE Y PRESENCIA
                  const Text(
                    'Los 5 Momentos para la Higiene de Manos',
                    style: TextStyle(
                      fontSize: 20, // Aumentado para mayor jerarquía
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B4332), // Verde bosque profesional
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 20), // Separación amplia con la lista
                  
                  // LISTADO DE MOMENTOS
                  _itemMomento(1, Icons.person_outline, 'Antes del contacto con el paciente'),
                  _itemMomento(2, Icons.add_circle_outline, 'Antes de realizar una tarea aséptica'),
                  _itemMomento(3, Icons.warning_amber_rounded, 'Después del riesgo de exposición a fluidos corporales'),
                  _itemMomento(4, Icons.person_outline, 'Después del contacto con el paciente'),
                  _itemMomento(5, Icons.single_bed_outlined, 'Después del contacto con el entorno del paciente'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// MÉTODO AUXILIAR: Fila individual del momento con fuentes e íconos más grandes
  Widget _itemMomento(int numero, IconData icono, String texto) {
    return Padding(
      // Mayor espacio vertical entre cada fila para dar "aire" a la tarjeta
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // CIRCULO INDICADOR DE NÚMERO
          Container(
            width: 32, // Incrementado para acompañar el texto más grande
            height: 32,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xFFE8F5E9), // Verde pastel suave
              shape: BoxShape.circle,
            ),
            child: Text(
              '$numero',
              style: const TextStyle(
                fontSize: 14, // Texto del número más visible
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D6A4F),
              ),
            ),
          ),
          const SizedBox(width: 14), // Espaciado horizontal
          
          // ÍCONO MÁS GRANDE
          Icon(
            icono, 
            color: const Color(0xFF2D6A4F), 
            size: 24, // Aumentado de 20 a 24
          ),
          
          const SizedBox(width: 14),
          
          // TEXTO DEL MOMENTO AMPLIADO
          Expanded(
            child: Text(
              texto,
              style: const TextStyle(
                fontSize: 15, // Aumentado para mejorar la lectura rápida
                fontWeight: FontWeight.w500,
                color: Color(0xFF2B2B2B), // Gris oscuro legibilidad óptima
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}