// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:coffee_app/pages/detail_menu_cold_coffee.dart';
import 'package:flutter/material.dart';
import './detail_menu_hot_coffee.dart';

class DetailMenu extends StatelessWidget {
  const DetailMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double heightApp = MediaQuery.of(context).size.height;
    double widthApp = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
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
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.0),
                              Colors.black.withOpacity(0.0),
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(1.0),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 90,
                    left: 20,
                    child: RichText(
                      text: const TextSpan(
                        text: "It's Great",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: "Day for \nCoffee",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Transform.translate(
                offset: Offset(
                  0.0,
                  -(heightApp * 0.3 - heightApp * 0.26),
                ),
                child: Container(
                  width: widthApp,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.black,
                          labelStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          unselectedLabelColor: Colors.grey[400],
                          unselectedLabelStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                          ),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          tabs: [
                            const Tab(
                              child: Text("Hot Coffee"),
                            ),
                            const Tab(
                              child: Text("Clod Coffee"),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 16,
                            left: 16,
                            bottom: 5,
                          ),
                          child: TextField(
                            autocorrect: false,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Search Your Coffee...",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  width: 1.0,
                                  color: Colors.grey,
                                ),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 3),
                              prefixIcon: const Padding(
                                padding: EdgeInsets.only(
                                  right: 15,
                                  left: 15,
                                ),
                                child: Icon(
                                  Icons.search,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: heightApp * 0.6,
                          child: const TabBarView(
                            children: [
                              HotCoffeePage(),
                              ColdCoffeePage(),
                            ],
                          ),
                        )
                      ],
                    ),
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
