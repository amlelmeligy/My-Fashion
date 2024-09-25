import 'package:flutter/material.dart';

class textformfieldWidget extends StatefulWidget {
  const textformfieldWidget({
    super.key,
  });

  @override
  State<textformfieldWidget> createState() => _textformfieldWidgetState();
}

class _textformfieldWidgetState extends State<textformfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        fillColor: const Color.fromRGBO(18, 1, 69, 0.848),
        filled: true,
        labelText: "Search here",
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        suffix: DropdownButton(
          borderRadius: BorderRadius.circular(10),
          hint: const Text(
            "Select",
          ),
          items: const [
            DropdownMenuItem(child: Text("WOMAN"), value: "WOMAN"),
            DropdownMenuItem(child: Text("MAN"), value: "MAN"),
            DropdownMenuItem(
              child: Text("Children"),
              value: "Children",
            )
          ],
          onChanged: (value) {
            setState(() {
              print(value);
            });
          },
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(28),
        ),
      ),
    );
  }
}
