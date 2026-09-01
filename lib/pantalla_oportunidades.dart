import 'package:flutter/material.dart';
import 'tarjeta_oportunidad.dart';

class PantallaOportunidades extends StatelessWidget {
  const PantallaOportunidades({super.key});

  static const List<String> _indicaciones = [
    'Antes de tocar al paciente',
    'Antes de realizar una tarea limpia/aséptica',
    'Después del riesgo de exposición a fluidos corporales',
    'Después de tocar al paciente',
    'Después del contacto con el entorno del paciente',
  ];

  static const List<String> _acciones = [
    'Guantes',
    'Lavado de manos (LV)',
    'Omisión',
    'Fricción de manos (FM)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56),
        title: const Text('Registro de oportunidad'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              TarjetaOportunidad(
                numero: 'OPORTUNIDAD 01',
                indicaciones: _indicaciones,
                acciones: _acciones,
                activa: true,
              ),
              TarjetaOportunidad(
                numero: 'OPORTUNIDAD 02',
                indicaciones: _indicaciones,
                acciones: _acciones,
                activa: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}