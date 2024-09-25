import 'package:flutter/material.dart';

List categories = [
  {"img": "assets/Frame 8.png", "title": "Tops"},
  {"img": "assets/Frame 9.png", "title": "Skirts"},
  {"img": "assets/Frame 13.png", "title": "Dress"},
  {"img": "assets/Frame 8.png", "title": "Skirts"},
  {"img": "assets/Frame 9.png", "title": "Tops"},
];

Widget horizontalScroll() => Container(
      height: 170,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, i) {
          return InkWell(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
              ),
              child: Column(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 124, 121, 110),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          categories[i]["img"],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      categories[i]["title"],
                      style: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
