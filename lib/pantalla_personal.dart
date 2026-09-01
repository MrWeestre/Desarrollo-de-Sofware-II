import 'package:flutter/material.dart';
import 'tarjeta_campo.dart';

class PantallaPersonal extends StatelessWidget {
  const PantallaPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F1EA), // Fondo beige neutro suave
      appBar: AppBar(
        title: const Text(
          'Registro de Personal',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF006A4E), // Verde institucional
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _crearEncabezadoSeccion('OBSERVADOR', Icons.visibility_outlined),
              const SizedBox(height: 12),
              const TarjetaCampo(
                etiqueta: 'Nombre del Observador',
                valor: 'Lic. María Elena Torres',
                icono: Icons.badge_outlined,
              ),
              const TarjetaCampo(
                etiqueta: 'Código de Registrador',
                valor: 'OBS-2026-8891',
                icono: Icons.qr_code,
              ),
              const TarjetaCampo(
                etiqueta: 'Rol / Cargo',
                valor: 'Auditor Interno de Calidad',
                icono: Icons.work_outline,
              ),

              const SizedBox(height: 24),

              _crearEncabezadoSeccion('PERSONAL OBSERVADO', Icons.person_search_outlined),
              const SizedBox(height: 12),
              const TarjetaCampo(
                etiqueta: 'Nombre del Personal',
                valor: 'Dr. Carlos Mendoza Ruiz',
                icono: Icons.person_outline,
              ),
              const TarjetaCampo(
                etiqueta: 'Profesión / Categoría',
                valor: 'Médico Especialista - UCI',
                icono: Icons.medical_services_outlined,
              ),
              const TarjetaCampo(
                etiqueta: 'Turno de Observación',
                valor: 'Mañana (07:00 - 13:00)',
                icono: Icons.access_time,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearEncabezadoSeccion(String titulo, IconData icono) {
    return Row(
      children: [
        Icon(icono, color: const Color(0xFF006A4E), size: 20),
        const SizedBox(width: 8),
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF006A4E),
            letterSpacing: 1.0,
          ),
        ),
      ],
    );
  }
}