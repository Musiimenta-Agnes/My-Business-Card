import 'package:flutter/material.dart';

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6EFE7), // soft beige background
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // --- Top Row: Image + Info ---
              Row(
                children: [
                  // Profile Picture
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/agie.png", // put your image here
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 20),

                  // Contact Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _infoRow(Icons.phone, "0742443850"),
                        _infoRow(Icons.email, "musiimentaagnes9@gmail.com"),
                        _infoRow(Icons.language, "www.reallygreatsite.com"),
                        _infoRow(Icons.location_on,
                            "123 Anywhere St., Any City"),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Divider
              Container(
                height: 1,
                color: Colors.brown.shade300,
              ),

              const SizedBox(height: 15),

              // Name & Title
              const Text(
                "Musimenta Agnes",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "WEBSITE DEVELOPER",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.brown,
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 20),

              // Heart Indicator Bar
              Row(
                children: [
                  const Icon(Icons.favorite, color: Colors.brown, size: 20),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.brown.shade300,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable contact row widget
  Widget _infoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, color: Colors.brown),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.brown, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
