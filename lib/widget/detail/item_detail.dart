import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({
    super.key,
    required this.title,
    required this.containt,
  });

  final String title;
  final String containt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            containt,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
