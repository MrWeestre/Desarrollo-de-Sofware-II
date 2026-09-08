import 'package:flutter/material.dart';

class TarjetaOportunidad extends StatelessWidget {
  final String numero;
  final List<String> indicaciones;
  final List<String> acciones;
  final bool activa;

  // NUEVO:
  // Indica si la oportunidad ya fue registrada.
  final bool registrada;

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
    // Color del texto según si la oportunidad está activa o no.
    final Color colorTexto =
        activa ? Colors.black87 : Colors.grey.shade400;

    // Color del indicador según el estado.
    // Verde = registrada
    // Rojo = pendiente
    final Color colorIndicador =
        registrada ? Colors.green[600]! : Colors.red[400]!;

    return Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // ============================================
          // NÚMERO DE OPORTUNIDAD + INDICADOR
          // ============================================
          Expanded(
            flex: 1,
            child: Stack(
              // Permite que el círculo sobresalga ligeramente.
              clipBehavior: Clip.none,
              children: [
                Text(
                  numero,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: colorTexto,
                  ),
                ),

                // Indicador superpuesto.
                Positioned(
                  top: -4,
                  right: 8,
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

          // ============================================
          // INDICACIONES
          // ============================================
          Expanded(
            flex: 2,
            child: _listaOpciones(
              indicaciones,
              colorTexto,
            ),
          ),

          // ============================================
          // ACCIONES
          // ============================================
          Expanded(
            flex: 1,
            child: _listaOpciones(
              acciones,
              colorTexto,
            ),
          ),
        ],
      ),
    );
  }

  // Lista reutilizable para indicaciones y acciones.
  Widget _listaOpciones(
    List<String> opciones,
    Color colorTexto,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: opciones.map((texto) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.radio_button_unchecked,
                size: 16,
                color: colorTexto,
              ),

              const SizedBox(width: 6),

              Flexible(
                child: Text(
                  texto,
                  style: TextStyle(
                    fontSize: 12,
                    color: colorTexto,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}