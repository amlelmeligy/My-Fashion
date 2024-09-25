import 'package:flutter/material.dart';

class festivalSale extends StatelessWidget {
  const festivalSale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: const Text(
            "Festival Sale Ends In:",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
          padding: EdgeInsets.all(7),
          child: const Text(
            "04d:16hrs:32mins",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
