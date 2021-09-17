import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class ListButton extends StatefulWidget {
  final value;
  final items;
  final hint;
  final newKey;
  final ValueChanged? onChange;

  const ListButton({
    Key? key,
    this.value,
    this.onChange,
    this.items,
    this.hint,
    this.newKey,
  }) : super(key: key);

  @override
  _ListButtonState createState() => _ListButtonState();
}

class _ListButtonState extends State<ListButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(8),
      shadowColor: Colors.white,
      child: Container(
        margin: EdgeInsets.only(top: 6, bottom: 6),
        padding: EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding,
        ),
        child: DropdownButton(
          key: widget.newKey,
          hint: Text(
            widget.hint,
            style: GoogleFonts.montserrat(),
          ),
          dropdownColor: Colors.white,
          icon: SvgPicture.asset(
            'assets/icons/ic_button.svg',
            color: Color(0xFF2D9CDB),
          ),
          iconSize: 36,
          isExpanded: true,
          underline: SizedBox(),
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black,
          ),
          value: widget.value,
          onChanged: widget.onChange,
          items: widget.items,
        ),
      ),
    );
  }
}
