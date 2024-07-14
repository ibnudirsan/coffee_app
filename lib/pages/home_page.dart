import 'package:coffee_app/pages/detail_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/home/card_category.dart';
import '../widget/home/card_favorit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontSize: 15),
        unselectedLabelStyle: const TextStyle(fontSize: 15),
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: Colors.grey,
            ),
            label: 'Tersimpan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profil',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 140,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage('assets/profile.jpeg'),
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Hi, Heri Purwanto",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications_active_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            autocorrect: false,
                            autofocus: false,
                            cursorHeight: 20,
                            decoration: InputDecoration(
                              hintText: "Cari Item...",
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 20),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailMenu(),
                          ),
                        );
                      },
                      child: const Home_Card_Category(
                        imagePath: 'assets/tubruk.png',
                        title: 'Tubruk',
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Home_Card_Category(
                        imagePath: 'assets/mesin.png',
                        title: 'Expresso',
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Home_Card_Category(
                        imagePath: 'assets/cup.png',
                        title: 'Latte',
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Home_Card_Category(
                        imagePath: 'assets/biji.png',
                        title: 'Biji',
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 30,
                ),
                child: Text(
                  "Menu Favorit",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Home_Card_Favorit(
                imagePath: 'assets/coffee_1.jpg',
                title: 'Cappucino',
                rating: '4.8/5.0',
                time: '09:00 - 21:00 WIB',
              ),
              const Home_Card_Favorit(
                imagePath: 'assets/coffee_2.jpg',
                title: 'Americano',
                rating: '4.6/5.0',
                time: '08:00 - 20:00 WIB',
              ),
              const Home_Card_Favorit(
                imagePath: 'assets/coffee_3.jpg',
                title: 'Cold Coffee',
                rating: '4.7/5.0',
                time: '10:00 - 22:00 WIB',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
