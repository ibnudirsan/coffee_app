import 'package:coffee_app/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Home_Card_Favorit extends StatelessWidget {
  const Home_Card_Favorit({
    super.key,
    required this.imagePath,
    required this.title,
    required this.rating,
    required this.time,
  });

  final String imagePath;
  final String title;
  final String rating;
  final String time;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          width: double.infinity,
          height: 240,
          child: Stack(
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 10,
                child: SizedBox(
                  height: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star_rate_sharp,
                              color: Colors.amber,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              rating,
                              style: GoogleFonts.montserrat(fontSize: 12),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.access_time,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              time,
                              style: GoogleFonts.montserrat(fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
