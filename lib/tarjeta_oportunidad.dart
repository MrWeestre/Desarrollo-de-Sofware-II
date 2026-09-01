import 'package:flutter/material.dart';

class TarjetaOportunidad extends StatelessWidget {
  const TarjetaOportunidad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFBF9F5),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE6E1D6)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xFFE8F5E9),
              shape: BoxShape.circle,
            ),
            child: const Text(
              '01',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D6A4F),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Indicación de Higiene',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF1B4332),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Antes de realizar un procedimiento antiséptico o invasivo al paciente.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, color: Color(0xFF4A4A4A)),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Column(
            children: const [
              Icon(Icons.check_circle_outline, color: Colors.green, size: 28),
              SizedBox(height: 2),
              Text(
                'Cumple',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}