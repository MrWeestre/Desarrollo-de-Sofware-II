import 'package:flutter/material.dart';

class TarjetaOportunidad extends StatelessWidget {
  final String numero;
  final List<String> indicaciones;
  final List<String> acciones;
  final bool activa;

  const TarjetaOportunidad({
    super.key,
    required this.numero,
    required this.indicaciones,
    required this.acciones,
    this.activa = true,
  });

  @override
  Widget build(BuildContext context) {
    final Color colorTexto = activa ? Colors.black87 : Colors.grey.shade400;

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
          Expanded(
            flex: 1,
            child: Text(
              numero,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: colorTexto,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: _listaOpciones(indicaciones, colorTexto),
          ),
          Expanded(
            flex: 1,
            child: _listaOpciones(acciones, colorTexto),
          ),
        ],
      ),
    );
  }

  Widget _listaOpciones(List<String> opciones, Color colorTexto) {
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