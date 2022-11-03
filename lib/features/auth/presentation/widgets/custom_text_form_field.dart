import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';


class CustomTextFormField extends StatelessWidget {
  final String hint;
  final IconData iconData;
  final bool isPassword;
  const CustomTextFormField(
      {super.key,
      required this.hint,
      required this.iconData,
      required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(34),
            borderSide: const BorderSide(
              color: Colors.black12,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(34),
            borderSide: const BorderSide(
              color: Colors.black12,
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: hint,
          labelStyle:
              const TextStyle(color: Colors.black54, fontFamily: 'Poppins'),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CircleAvatar(
                backgroundColor: Colors.pink.withAlpha(10),
                child: Icon(
                  iconData,
                  color: deepPink,
                )),
          ),
          suffixIcon: (isPassword == true)
              ? const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.black54,
                  ),
                )
              : const Text(' '),
        ),
        style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        cursorColor: Colors.black54,
        cursorWidth: 1,
        keyboardType: (isPassword == true) ? TextInputType.text : TextInputType.emailAddress,
        obscureText: (isPassword == true) ? true : false,
      ),
    );
  }
}
