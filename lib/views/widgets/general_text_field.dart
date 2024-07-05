import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';

class GeneralTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Widget prefix;
  final Widget postfix;
  final bool obscureText;
  final TextInputType keyboardType;
  
  const GeneralTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.prefix = const SizedBox(height: 4, width: 4),
    this.postfix = const SizedBox(height: 4, width: 4),
    this.obscureText = false,
    this.keyboardType = TextInputType.none,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent.withAlpha(150),
        border: Border.all(color: const Color(0xffeeeeee)),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.transparent,
          contentPadding:
              const EdgeInsets.only(top: 10.0, left: 10, bottom: 10),
          hintText: hint,
          hintStyle: const TextStyle(color: kWhiteColor, fontSize: 14, fontWeight: FontWeight.w500),
          prefixIcon: prefix,
          suffixIcon: postfix,
        ),
      ),
    );
  }
}
