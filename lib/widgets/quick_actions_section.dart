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
          children: [
            Expanded(
              child: _ActionCard(
                icon: Icons.document_scanner_rounded,
                title: "Scan Plant",
                subtitle: "Identify diseases",
                color: const Color(0xff4CAF50),
                onTap: () {
                  print("Scan Plant");
                },
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: _ActionCard(
                icon: Icons.yard_rounded,
                title: "My Garden",
                subtitle: "View all plants",
                color: const Color(0xff66BB6A),
                onTap: () {
                  print("My Garden");
                },
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        Row(
          children: [
            Expanded(
              child: _ActionCard(
                icon: Icons.smart_toy_rounded,
                title: "AI Assistant",
                subtitle: "Ask anything",
                color: const Color(0xff43A047),
                onTap: () {
                  print("AI Assistant");
                },
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: _ActionCard(
                icon: Icons.wb_sunny_rounded,
                title: "Weather",
                subtitle: "Today's forecast",
                color: const Color(0xff81C784),
                onTap: () {
                  print("Weather");
                },
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
  final String subtitle;
  final Color color;
  final VoidCallback onTap;

  const _ActionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: onTap,
        child: Container(
          height: 130,

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

              const SizedBox(height: 4),

              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}