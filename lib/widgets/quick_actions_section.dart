import 'package:flutter/material.dart';

class QuickActionsSection extends StatelessWidget {
  const QuickActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "Quick Actions",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        Row(
          children: const [

            Expanded(
              child: _ActionCard(
                icon: Icons.document_scanner_rounded,
                title: "Scan Plant",
                color: Color(0xff4CAF50),
              ),
            ),

            SizedBox(width: 16),

            Expanded(
              child: _ActionCard(
                icon: Icons.yard_rounded,
                title: "My Garden",
                color: Color(0xff66BB6A),
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        Row(
          children: const [

            Expanded(
              child: _ActionCard(
                icon: Icons.smart_toy_rounded,
                title: "AI Assistant",
                color: Color(0xff43A047),
              ),
            ),

            SizedBox(width: 16),

            Expanded(
              child: _ActionCard(
                icon: Icons.wb_sunny_rounded,
                title: "Weather",
                color: Color(0xff81C784),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const _ActionCard({
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CircleAvatar(
            radius: 24,
            backgroundColor: color.withOpacity(0.15),
            child: Icon(
              icon,
              color: color,
              size: 28,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}