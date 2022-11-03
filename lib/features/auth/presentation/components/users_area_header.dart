
import 'package:flutter/material.dart';
import 'package:quick_connect/core/utils/app_colors.dart';
import 'package:quick_connect/features/auth/presentation/widgets/custom_gradient_text.dart';


class UsersAreaHeader extends StatelessWidget {
  final String text;
  const UsersAreaHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(
          height: height / 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Welcome to ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            CustomGradientText(
              ' QuickConnect',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
              gradient: LinearGradient(colors: [deepPink, tButton]),
            ),
          ],
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 18, fontFamily: 'Poppins', color: Colors.black54),
        ),
        SizedBox(
          height: height / 20,
        ),
      ],
    );
  }
}
