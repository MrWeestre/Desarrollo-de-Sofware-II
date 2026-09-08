import 'package:flutter/material.dart';

import 'widgets_comunes.dart';
import 'app_layout.dart';

class PantallaResumen extends StatelessWidget {
  final int totalOportunidades;
  final int oportunidadesCorrectas;

  const PantallaResumen({
    super.key,
    required this.totalOportunidades,
    required this.oportunidadesCorrectas,
  });

  // =====================================================
  // CÁLCULO DEL PORCENTAJE DE ADHERENCIA
  // =====================================================

  double get porcentajeAdherencia {
    if (totalOportunidades == 0) {
      return 0.0;
    }

    return (
      oportunidadesCorrectas /
      totalOportunidades
    ) * 100;
  }

  @override
  Widget build(BuildContext context) {

    // ===================================================
    // MEDIDA DE LA PANTALLA
    // ===================================================

    final layout = AppLayout.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56),
        title: const Text(
          'Resumen de auditoría',
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: layout.paddingPantalla,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              // =================================================
              // PANEL DE DIAGNÓSTICO
              // =================================================

              _panelDiagnostico(
                layout.anchoPantalla,
              ),

              const SizedBox(height: 20),

              // =================================================
              // MÉTRICAS RESPONSIVAS
              // =================================================

              layout.esMobil
                  ? _metricasColumna()
                  : _metricasFila(),
            ],
          ),
        ),
      ),
    );
  }

  // ==========================================================
  // PANEL DE DIAGNÓSTICO
  // ==========================================================

  Widget _panelDiagnostico(
    double anchoPantalla,
  ) {
    return LayoutBuilder(
      builder: (context, constraints) {

        // Ancho que realmente recibió este widget.
        final double anchoLocal =
            constraints.maxWidth;

        // Determinamos la categoría.
        final String categoria =
            anchoLocal < 600
                ? 'Compacta (móvil)'
                : anchoLocal < 840
                    ? 'Media (tablet)'
                    : 'Expandida (escritorio)';

        return Container(
          padding: const EdgeInsets.all(10),

          decoration: BoxDecoration(
            color: Colors.amber[50],
            border: Border.all(
              color: Colors.amber,
            ),
            borderRadius:
                BorderRadius.circular(8),
          ),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [

              const Text(
                '● PANEL DE DIAGNÓSTICO (temporal)',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),

              const SizedBox(height: 4),

              Text(
                'Ancho local (LayoutBuilder): '
                '${anchoLocal.toStringAsFixed(1)} pt',
              ),

              Text(
                'Ancho de pantalla (MediaQuery): '
                '${anchoPantalla.toStringAsFixed(1)} pt',
              ),

              Text(
                'Categoría: $categoria',
              ),
            ],
          ),
        );
      },
    );
  }

  // ==========================================================
  // MÉTRICAS EN COLUMNA — MÓVIL
  // ==========================================================

  Widget _metricasColumna() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch,
      children: [

        tarjetaCampo(
          'OPORTUNIDADES OBSERVADAS',
          totalOportunidades.toString(),
        ),

        tarjetaCampo(
          'OPORTUNIDADES CORRECTAS',
          oportunidadesCorrectas.toString(),
        ),

        tarjetaCampo(
          'ADHERENCIA',
          '${porcentajeAdherencia.toStringAsFixed(1)} %',
        ),
      ],
    );
  }

  // ==========================================================
  // MÉTRICAS EN FILA — TABLET / ESCRITORIO
  // ==========================================================

  Widget _metricasFila() {
    return Row(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [

        Expanded(
          child: tarjetaCampo(
            'OPORTUNIDADES OBSERVADAS',
            totalOportunidades.toString(),
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: tarjetaCampo(
            'OPORTUNIDADES CORRECTAS',
            oportunidadesCorrectas.toString(),
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: tarjetaCampo(
            'ADHERENCIA',
            '${porcentajeAdherencia.toStringAsFixed(1)} %',
          ),
        ),
      ],
    );
  }
}