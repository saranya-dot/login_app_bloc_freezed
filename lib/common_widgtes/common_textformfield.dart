import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextformfield extends StatelessWidget {
  TextEditingController? controller;
  final String hintText;
  Icon? icon;
  String? Function(String?)? validator;
  TextInputType? type;
  List<TextInputFormatter>? inputFormatter;
  CommonTextformfield({
    super.key,
    required this.hintText,
    this.icon,
    this.controller,
    this.validator,
    this.type,
    this.inputFormatter,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      onTap: () {
        //call
      },
      keyboardType: type,
      inputFormatters: inputFormatter,
      onChanged: (value) {},
      decoration: InputDecoration(
        hintText: ' $hintText',
        hintStyle: const TextStyle(),
        prefixIcon: icon,

        // filled: true,
        // fillColor: Color.fromRGBO(241, 227, 245, 1),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(12),
        //   borderSide: BorderSide.none,
        // ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
      ),
    );
  }
}
