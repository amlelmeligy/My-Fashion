import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List counter = [
  "Sweater",
  "Hoddies",
  "Dress",
  "Skirts",
  "Shirt",
  "Shoes",
  "Jackets",
  "Summer",
  "Beach",
  "Home",
  "Red",
  "Long",
  "Gym",
];
Widget SearchContaniers() => Container(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 40,
        ),
        itemCount: counter.length,
        itemBuilder: (context, i) {
          return InkWell(
              child: Card(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: const Color.fromRGBO(18, 1, 69, 0.848),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  counter[i],
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.xmark,
                    color: Colors.white,
                    size: 18,
                  ),
                )
              ],
            )),
          ));
        },
      ),
    );
