import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'app_layout.dart';

/// Pantalla 6: Resumen de Auditoría con panel diagnóstico adaptativo (Sesiones 9 y 10).
class PantallaResumen extends StatelessWidget {
  final int totalOportunidades;
  final int oportunidadesCorrectas;

  const PantallaResumen({
    super.key,
    required this.totalOportunidades,
    required this.oportunidadesCorrectas,
  });

  double get porcentajeAdherencia => totalOportunidades == 0
      ? 0.0
      : (oportunidadesCorrectas / totalOportunidades) * 100;

  @override
  Widget build(BuildContext context) {
    final layout = AppLayout.of(context);
    final double anchoPantalla = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56),
        title: const Text('Resumen de Auditoría', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: layout.paddingPantalla,
        child: Column(
          children: [
            // Panel de diagnóstico: Solo visible en modo Debug para sustentación de la Guía
            if (kDebugMode) _panelDiagnostico(anchoPantalla),
            const SizedBox(height: 16),

            // Branching Responsivo (Column en móvil <600pt / Row en Tablet >=600pt)
            layout.esMobil ? _metricasColumna() : _metricasFila(),
          ],
        ),
      ),
    );
  }

  /// Panel temporal que mide diferencias entre LayoutBuilder y MediaQuery
  Widget _panelDiagnostico(double anchoPantalla) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double anchoLocal = constraints.maxWidth;
        final String categoria = anchoLocal < 600
            ? 'Compacta (Móvil)'
            : anchoLocal < 840
                ? 'Media (Tablet)'
                : 'Expandida (Escritorio)';

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber.shade50,
            border: Border.all(color: Colors.amber.shade700),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'PANEL DE DIAGNÓSTICO (TEMPORAL)',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.amber),
              ),
              const SizedBox(height: 4),
              Text('Ancho local (LayoutBuilder): ${anchoLocal.toStringAsFixed(1)} pt'),
              Text('Ancho pantalla (MediaQuery): ${anchoPantalla.toStringAsFixed(1)} pt'),
              Text('Categoría: $categoria', style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        );
      },
    );
  }

  /// Disposición vertical para pantallas compactas
  Widget _metricasColumna() {
    return Column(
      children: [
        _tarjetaMetrica('OPORTUNIDADES OBSERVADAS', totalOportunidades.toString()),
        const SizedBox(height: 8),
        _tarjetaMetrica('OPORTUNIDADES CORRECTAS', oportunidadesCorrectas.toString()),
        const SizedBox(height: 8),
        _tarjetaMetrica('ADHERENCIA', '${porcentajeAdherencia.toStringAsFixed(1)} %'),
      ],
    );
  }

  /// Disposición horizontal para pantallas expandidas
  Widget _metricasFila() {
    return Row(
      children: [
        Expanded(child: _tarjetaMetrica('OPORTUNIDADES OBSERVADAS', totalOportunidades.toString())),
        const SizedBox(width: 12),
        Expanded(child: _tarjetaMetrica('OPORTUNIDADES CORRECTAS', oportunidadesCorrectas.toString())),
        const SizedBox(width: 12),
        Expanded(child: _tarjetaMetrica('ADHERENCIA', '${porcentajeAdherencia.toStringAsFixed(1)} %')),
      ],
    );
  }

  /// Componente tarjeta de métrica estilizada con el color institucional
  Widget _tarjetaMetrica(String titulo, String valor) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF0F6E56).withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Text(
            titulo,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF0F6E56)),
          ),
          const SizedBox(height: 6),
          Text(
            valor,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}