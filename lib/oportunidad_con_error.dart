import 'package:flutter/material.dart';

Widget oportunidadConError() {
  return Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: const [
        Text(
          'OPORTUNIDAD 01',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Icon(Icons.radio_button_unchecked, size: 16),
        Text('DESPUES DEL RIESGO DE EXPOSICION A FLUIDOS CORPORALES'),
        Icon(Icons.radio_button_unchecked, size: 16),
        Text('FRICCION DE MANOS (FM)'),
      ],
    ),
  );
}