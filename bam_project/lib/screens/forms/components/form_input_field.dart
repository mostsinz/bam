import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class FormInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final ValueChanged<String>? onChange;
  final int? maxLenght;

  const FormInputField({
    Key? key,
    this.hintText,
    this.onChange,
    required this.controller, this.maxLenght,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
        kDefaultPadding,
        kDefaultPadding,
        kDefaultPadding,
        0,
      ),
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(8),
        shadowColor: Colors.white,
        child: TextField(
          maxLength: maxLenght,
          controller: controller,
          onChanged: onChange,
          style: GoogleFonts.poppins(),
          decoration: InputDecoration(
              counterText: "",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              hintText: hintText,
              contentPadding: EdgeInsets.all(kDefaultPadding)),
        ),
      ),
    );
  }
}
