import 'package:flutter/material.dart';
import 'tarjeta_oportunidad.dart';
import 'pantalla_momentos_wrap.dart';
import 'pantalla_resumen.dart';

void main() {
  runApp(const AppAuditoriaHigiene());
}

class AppAuditoriaHigiene extends StatelessWidget {
  const AppAuditoriaHigiene({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ManosSeguras - Guía 04',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF1EFE8),
      ),
      home: const PantallaPruebasOportunidades(),
    );
  }
}

/// Pantalla 4: Muestra las 3 combinaciones obligatorias según la Sección 5.3 de la guía
class PantallaPruebasOportunidades extends StatelessWidget {
  const PantallaPruebasOportunidades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56),
        title: const Text('Registro Oportunidades', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            // Instancia 1: Activa y ya registrada (Círculo Verde)
            TarjetaOportunidad(
              numero: 'OPORTUNIDAD 01',
              indicaciones: ['Antes de tocar al paciente'],
              acciones: ['Fricción de manos'],
              activa: true,
              registrada: true,
            ),
            // Instancia 2: Activa pero pendiente (Círculo Rojo)
            TarjetaOportunidad(
              numero: 'OPORTUNIDAD 02',
              indicaciones: ['Tarea limpia/aséptica'],
              acciones: ['Omitido'],
              activa: true,
              registrada: false,
            ),
            // Instancia 3: Inactiva y pendiente (Gris + Círculo Rojo)
            TarjetaOportunidad(
              numero: 'OPORTUNIDAD 03',
              indicaciones: ['Contacto con entorno'],
              acciones: ['Sin observar'],
              activa: false,
              registrada: false,
            ),
          ],
        ),
      ),
    );
  }
}