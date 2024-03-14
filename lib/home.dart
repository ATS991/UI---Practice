import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leadingWidth: 60,
        leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpg")),
        centerTitle: true,
        title: Text(
          "Home",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.qrcode_viewfinder,
                  size: 35,
                  color: Colors.black,
                ),
              ),
              const Icon(
                Icons.notifications,
                size: 35,
                color: Colors.black,
              )
            ],
          )
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  isDense: true,
                  filled: true,
                  fillColor: Color.fromARGB(255, 244, 241, 241),
                  prefixIcon: const Icon(CupertinoIcons.search,
                      size: 25, color: Colors.black),
                  hintText: "Search ATMs, Payments, Fines",
                  hintStyle: GoogleFonts.quicksand(
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Accounts",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    height: 225,
                    width: 380,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Color.fromARGB(255, 231, 226, 226),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              height: 45,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.green),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.add_circle_outline,
                                        size: 25, color: Colors.white),
                                    Text(
                                      "Add Money",
                                      style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              height: 45,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.green),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 26, right: 26),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.arrow_forward_rounded,
                                        color: Colors.green),
                                    Text(
                                      "Transfer",
                                      style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [0.1, 0.5, 0.7, 0.9],
                        colors: [
                          // Colors are easy thanks to Flutter's Colors class.
                          Color.fromARGB(127, 40, 45, 46),
                          Color.fromARGB(255, 181, 178, 183),
                          Color.fromARGB(255, 111, 114, 115),
                          Color.fromARGB(255, 48, 52, 53),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color:
                                      const Color.fromARGB(255, 247, 248, 249),
                                ),
                                child: const Icon(
                                  CupertinoIcons.money_dollar_circle_fill,
                                  color: Colors.black,
                                  size: 32,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                children: [
                                  const Text(
                                    "24,129.50",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Dollar balance",
                                    style: GoogleFonts.quicksand(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 45,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.blueGrey,
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image1.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 45,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.blueGrey,
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image2.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 45,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.blueGrey,
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image3.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add_circle_outline_outlined,
                      color: Colors.green),
                  const SizedBox(width: 10),
                  Text(
                    "Open a new account or product",
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
              const SizedBox(height: 25),
              Container(
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 238, 236, 236)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Overview",
                          style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 130,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    const Color.fromARGB(255, 216, 219, 221)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Spendings",
                                      style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.bold))),
                                  Text("\$4,282.75 spent \n this month",
                                      style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 102, 100, 100)))),
                                  Container(
                                    height: 40,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/graph1.jpg"),
                                            fit: BoxFit.cover)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 130,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    const Color.fromARGB(255, 216, 219, 221)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Cashback",
                                      style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.bold))),
                                  const Row(children: [
                                    CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images/image4.png"),
                                        radius: 18),
                                    CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images/image5.png"),
                                        radius: 18),
                                    CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images/image6.jpeg"),
                                        radius: 18),
                                    CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images/image7.jpeg"),
                                        radius: 18),
                                  ])
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 160,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 239, 238, 238)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quick transfer",
                        style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: Container(
        height: 60,
        width: 380,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color.fromARGB(255, 227, 226, 226)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home_filled,
                    color: Colors.green,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.check_box_outline_blank_rounded,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_bubble_outlined,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.grey,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
