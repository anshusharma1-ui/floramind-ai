import 'package:flutter/material.dart';

class HeroPlantCard extends StatelessWidget {
  const HeroPlantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
       gradient: const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF43A047),
    Color(0xFF2E7D32),
    Color(0xFF1B5E20),
  ],
),

boxShadow: [
  BoxShadow(
    color: Color(0x554CAF50),
    blurRadius: 25,
    offset: Offset(0, 12),
  ),
],
      ),

      child: Padding(
        padding: const EdgeInsets.all(22),

        child: Row(
          children: [

            /// LEFT SIDE
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      "🌿 Today's Plant",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "Monstera\nDeliciosa",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      height: 1.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 14),

                  Wrap(
  spacing: 10,
  runSpacing: 10,
  children: [

    Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [

          Icon(
            Icons.water_drop,
            color: Colors.white,
            size: 16,
          ),

          SizedBox(width: 6),

          Text(
            "2 Days",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),

    Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [

          Icon(
            Icons.favorite,
            color: Colors.white,
            size: 16,
          ),

          SizedBox(width: 6),

          Text(
            "Healthy",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),

  ],
),

                  const SizedBox(height: 18),

                  ElevatedButton(
  onPressed: () {},

  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: const Color(0xFF2E7D32),
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 14,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
  ),

  child: const Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        Icons.menu_book_rounded,
        size: 20,
      ),
      SizedBox(width: 8),
      Text(
        "Care Guide",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
                ],
              ),
            ),

            const SizedBox(width: 10),

            /// RIGHT SIDE
            Stack(
  alignment: Alignment.center,
  children: [

    Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        shape: BoxShape.circle,
      ),
    ),

    Image.asset(
      "assets/images/monstera.png",
      height: 180,
      fit: BoxFit.contain,
    ),

  ],
),

          ],
        ),
      ),
    );
  }
}