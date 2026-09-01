import 'package:flutter/material.dart';
import 'widgets_comunes.dart';

class PantallaEstablecimiento extends StatelessWidget {
  const PantallaEstablecimiento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),
      body: SafeArea(
        child: Column(
          children: [
            _encabezadoInstitucional(),
            Expanded(child: _camposEstablecimiento()),
          ],
        ),
      ),
    );
  }

  Widget _camposEstablecimiento() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          tarjetaCampo('CÓDIGO ÚNICO', '00458213'),
          tarjetaCampo(
            'NOMBRE DEL ESTABLECIMIENTO',
            'Hospital Regional del Cusco',
          ),
          tarjetaCampo(
            'CATEGORÍA DEL ESTABLECIMIENTO',
            'III-1',
          ),
        ],
      ),
    );
  }

  Widget _encabezadoInstitucional() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: const BoxDecoration(
        color: Color(0xFF0F6E56),
      ),
      child: Column(
        children: const [
          Icon(
            Icons.clean_hands,
            color: Colors.white,
            size: 48,
          ),
          SizedBox(height: 8),
          Text(
            'Manos Seguras',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Registro de establecimiento',
            style: TextStyle(
              color: Color(0xFFC7E9DD),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}