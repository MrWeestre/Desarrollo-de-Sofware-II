import 'package:flutter/material.dart';

/// Widget TarjetaOportunidad extendido para la Guía N.° 04.
/// Utiliza Stack y Positioned para superponer el indicador de estado de registro.
class TarjetaOportunidad extends StatelessWidget {
  final String numero;
  final List<String> indicaciones;
  final List<String> acciones;
  final bool activa;
  final bool registrada; // Indica si la oportunidad fue registrada (verde) o está pendiente (rojo)

  const TarjetaOportunidad({
    super.key,
    required this.numero,
    required this.indicaciones,
    required this.acciones,
    this.activa = true,
    this.registrada = false,
  });

  @override
  Widget build(BuildContext context) {
    // Definición de color del texto según si está activa o inactiva
    final Color colorTexto = activa ? Colors.black87 : Colors.grey.shade400;

    // Color del indicador según el estado de registro
    final Color colorIndicador = registrada ? Colors.green.shade600 : Colors.red.shade400;

    return Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // COLUMNA 1: Número de oportunidad + Indicador de estado apilado
          Expanded(
            flex: 1,
            child: Stack(
              // Clip.none evita el recorte si el indicador sobresale del área
              clipBehavior: Clip.none,
              children: [
                Text(
                  numero,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: colorTexto,
                  ),
                ),
                // Indicador circular de estado superpuesto en la esquina superior derecha
                Positioned(
                  top: -2,
                  right: 4,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: colorIndicador,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),

          // COLUMNA 2: Lista de Indicaciones clínicas
          Expanded(
            flex: 2,
            child: _listaOpciones(indicaciones, colorTexto),
          ),
          const SizedBox(width: 8),

          // COLUMNA 3: Lista de Acciones registradas
          Expanded(
            flex: 1,
            child: _listaOpciones(acciones, colorTexto),
          ),
        ],
      ),
    );
  }

  /// Helper privado para construir la lista de opciones sin generar desbordamiento
  Widget _listaOpciones(List<String> lista, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: lista
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                item,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 11, color: color),
              ),
            ),
          )
          .toList(),
    );
  }
}