import 'package:flutter/material.dart';

class GreetingHeader extends StatelessWidget {
  const GreetingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [

            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xff1F4D3A),
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 12,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),

            const Spacer(),

            Stack(
              children: [

                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 12,
                      ),
                    ],
                  ),
                  child: const Icon(Icons.notifications_none),
                ),

                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(width: 15),

            const CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
          ],
        ),

        const SizedBox(height: 35),

        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Good Evening, Anshu 🌿",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ),

        const SizedBox(height: 8),

        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "FloraMind AI",
            style: TextStyle(
              fontSize: 46,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 8),

        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Your smart gardening companion",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}