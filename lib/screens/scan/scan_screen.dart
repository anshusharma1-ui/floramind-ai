import 'package:flutter/material.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7F3),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Plant Scanner",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Scan Your Plant",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Take a photo or choose one from your gallery.\nOur AI will identify diseases and provide care tips.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 30),

            Center(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(
                    "assets/images/monstera.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 35),

            Center(
              child: SizedBox(
                width: 400,
                height: 55,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt),
                  label: const Text(
                    "Take Photo",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2E7D32),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            Center(
              child: SizedBox(
                width: 400,
                height: 55,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.photo_library),
                  label: const Text(
                    "Choose from Gallery",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xff2E7D32),
                    side: const BorderSide(
                      color: Color(0xff2E7D32),
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}