
import 'package:flutter/material.dart';
class CustomBasicTextButton extends StatelessWidget {

  final String title ;
  final Color titleColor ;
  final VoidCallback onTab ;


  const CustomBasicTextButton({super.key, required this.title , required this.titleColor, required this.onTab});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: height / 55)),

        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        minimumSize: MaterialStateProperty.all(Size(width / 10 * 9, height * 0.0580)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      onPressed: onTab,
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          decoration: TextDecoration.none,
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );

  }
}
