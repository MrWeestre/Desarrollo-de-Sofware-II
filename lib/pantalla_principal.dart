import 'package:flutter/material.dart';
import 'tarjeta_campo.dart';
import 'tarjeta_oportunidad.dart';

class PantallaPrincipalAuditoria extends StatelessWidget {
  const PantallaPrincipalAuditoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F1EA), // Fondo beige neutro
      appBar: AppBar(
        title: const Text(
          'Auditoría de Higiene de Manos',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
        ),
        backgroundColor: const Color(0xFF006A4E), // Verde institucional
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ==========================================
              // 1. PANTALLA DE ESTABLECIMIENTO
              // ==========================================
              _tituloSeccion('ESTABLECIMIENTO DE SALUD', Icons.local_hospital_outlined),
              const SizedBox(height: 10),
              const TarjetaCampo(
                etiqueta: 'Código RENAES',
                valor: '00012849',
                icono: Icons.tag,
              ),
              const TarjetaCampo(
                etiqueta: 'Nombre del Establecimiento',
                valor: 'Hospital Nacional Docente Madre-Niño',
                icono: Icons.domain,
              ),
              const TarjetaCampo(
                etiqueta: 'Categoría',
                valor: 'Nivel III-1',
                icono: Icons.layers_outlined,
              ),

              const SizedBox(height: 24),

              // ==========================================
              // 2. PANTALLA DE PERSONAL / OBSERVADOR
              // ==========================================
              _tituloSeccion('OBSERVADOR', Icons.visibility_outlined),
              const SizedBox(height: 10),
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

              const SizedBox(height: 16),
              _tituloSeccion('PERSONAL OBSERVADO', Icons.person_search_outlined),
              const SizedBox(height: 10),
              const TarjetaCampo(
                etiqueta: 'Nombre del Personal',
                valor: 'Dr. Carlos Mendoza Ruiz',
                icono: Icons.person_outline,
              ),
              const TarjetaCampo(
                etiqueta: 'Categoría / Profesión',
                valor: 'Médico Especialista - UCI',
                icono: Icons.medical_services_outlined,
              ),

              const SizedBox(height: 24),

              // ==========================================
              // 3. TARJETA DE OPORTUNIDAD (LAYOUT FLEXIBLE)
              // ==========================================
              _tituloSeccion('EVALUACIÓN DE OPORTUNIDAD', Icons.fact_check_outlined),
              const SizedBox(height: 10),
              const TarjetaOportunidad(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tituloSeccion(String titulo, IconData icono) {
    return Row(
      children: [
        Icon(icono, color: const Color(0xFF006A4E), size: 20),
        const SizedBox(width: 8),
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Color(0xFF006A4E),
            letterSpacing: 0.8,
          ),
        ),
      ],
    );
  }
}