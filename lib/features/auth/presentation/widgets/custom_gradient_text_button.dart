
import 'package:flutter/material.dart';


class CustomGradientTextButton extends StatelessWidget {

  final String title ;
  final Color firstColor ;
  final Color secondColor ;
  final Color thirdColor ;
  final VoidCallback onTab ;
  const CustomGradientTextButton({super.key, required this.title , required this.firstColor, required this.secondColor, required this.thirdColor, required this.onTab});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [firstColor, secondColor , thirdColor]
          ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: height / 55)),
          minimumSize: MaterialStateProperty.all(Size(width / 10 * 9, height * 0.0580)),
        ),
        onPressed: onTab,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
