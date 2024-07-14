import 'package:coffee_app/widget/detail/item_detail.dart';
import 'package:coffee_app/widget/detail/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double heightApp = MediaQuery.of(context).size.height;
    double widthApp = double.infinity;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Background Foto and Name
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: heightApp * 0.3,
                    width: widthApp,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/coffee_1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.assistant_direction,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: heightApp * 0.07,
                    width: widthApp,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 10, bottom: 5),
                      child: Text(
                        "Coffee Americano",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Rating and Opening Hours
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4.6 (32 Reviews)",
                          style: GoogleFonts.montserrat(fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "10:00 - 22:00 WIB",
                          style: GoogleFonts.montserrat(fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // Card Promo
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  color: Colors.amber[300],
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ada Promo untuk Kamu",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Dapatkan Diskon 100 Ribu",
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Gunakan Diskon",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const ItemDetail(
                title: "Alamat",
                containt:
                    "Jalan Lele Raya No. 77 \nBekasi Selatan, Kota Bekasi, \nJawa Barat",
              ),
              const ItemDetail(
                title: "Description",
                containt:
                    "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor nihil deleniti omnis, rerum aspernatur ducimus esse excepturi cupiditate! Accusamus, numquam.",
              ),
              // Ulasan
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Ulasan Pengunjung",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Rating_Item(
                imagePath: "assets/profile.jpeg",
                name: "Heri",
                review:
                    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Similique repudiandae recusandae quis corrupti atque asperiores voluptates, mollitia doloribus unde accusamus cupiditate maxime optio repellendus nam.",
              ),
              const Rating_Item(
                imagePath: "assets/profile.jpeg",
                name: "Purwanto Purnomo",
                review:
                    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Similique repudiandae recusandae quis corrupti atque asperiores voluptates, mollitia doloribus unde accusamus cupiditate maxime optio repellendus nam.",
              ),
              const Rating_Item(
                imagePath: "assets/profile.jpeg",
                name: "Budi Setiawan",
                review:
                    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Similique repudiandae recusandae quis corrupti atque asperiores voluptates, mollitia doloribus unde accusamus cupiditate maxime optio repellendus nam.",
              ),
              const Rating_Item(
                imagePath: "assets/profile.jpeg",
                name: "Joko Setiawan",
                review:
                    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Similique repudiandae recusandae quis corrupti atque asperiores voluptates, mollitia doloribus unde accusamus cupiditate maxime optio repellendus nam.",
              ),
              const Rating_Item(
                imagePath: "assets/profile.jpeg",
                name: "Jono Setiawan",
                review:
                    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Similique repudiandae recusandae quis corrupti atque asperiores voluptates, mollitia doloribus unde accusamus cupiditate maxime optio repellendus nam.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
