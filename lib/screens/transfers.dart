import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newui/controllers/home_controller.dart';
import 'package:newui/controllers/transfer_controller.dart';
import 'package:newui/screens/home.dart';

class Transfers extends StatelessWidget {
  Transfers({super.key});
  final transferController controller = Get.put(transferController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(35), topLeft: Radius.circular(35)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel_outlined)),
                  Expanded(
                      child: Center(
                          child: Text(
                    "Transfers",
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ))),
                  SizedBox(
                    width: Get.width * 0.1,
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  isDense: true,
                  filled: true,
                  fillColor: const Color.fromARGB(255, 244, 241, 241),
                  prefixIcon: const Icon(CupertinoIcons.search,
                      size: 25, color: Colors.black),
                  hintText: "Search ATMs, Payments, Fines",
                  hintStyle: GoogleFonts.quicksand(
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Spendings in December >",
                style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 10),
              Container(
                height: 40,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/graph1.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: 10),
              Text(
                "Today",
                style: GoogleFonts.quicksand(
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 180,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 10);
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/${controller.profile[index]}"),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.name[index],
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    controller.time[index],
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.price[index],
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: controller.price[index][0]
                                                        .toString()
                                                        .substring(0, 1) ==
                                                    "+"
                                                ? Colors.green
                                                : Colors.black)),
                                  ),
                                  Text(
                                    controller.mode[index],
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 16, color: Colors.grey)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
              ),
              Text(
                "Yesterday",
                style: GoogleFonts.quicksand(
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10);
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/${controller.second[index]["image"]}")),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.second[index]["name"],
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    controller.second[index]["time"],
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    controller.second[index]["price"],
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: controller.second[index]
                                                        ["price"][0] ==
                                                    "+"
                                                ? Colors.green
                                                : Colors.black)),
                                  ),
                                  Text(
                                    controller.second[index]["mode"],
                                    style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            fontSize: 16, color: Colors.grey)),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
