import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Rating_Item extends StatelessWidget {
  const Rating_Item({
    super.key,
    required this.imagePath,
    required this.name,
    required this.review,
  });

  final String imagePath;
  final String name;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ClipOval(
                child: Image.asset(
                  imagePath,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(
                        Icons.star,
                        color: Colors.amber[300],
                        size: (20.0 + (i * 2.0)),
                      ),
                  ],
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, bottom: 25),
          child: Text(
            review,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),
          ),
        )
      ],
    );
  }
}
