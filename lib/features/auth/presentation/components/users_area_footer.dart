
import 'package:flutter/material.dart';

import 'package:quick_connect/core/utils/app_colors.dart';

import '../widgets/custom_gradient_text.dart';


class UsersAreaFooter extends StatelessWidget {
  final String text;
  final String coloredText;
  final VoidCallback onTap;
  const UsersAreaFooter({Key? key, required this.text, required this.coloredText, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Row(children: <Widget>[
          const Expanded(
              child: Divider(
                color: Colors.black54,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'continue with'.toUpperCase(),
              style: const TextStyle(
                  fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          const Expanded(
              child: Divider(
                color: Colors.black54,
              )),
        ]),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/images/google.png' , width: 24 , height: 24,),
                  label: const Text(
                    'GOOGLE',
                    style: TextStyle(
                        color: Colors.black87, fontFamily: 'Poppins'),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white.withAlpha(180)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white.withAlpha(180),
                        child: Image.asset('assets/images/apple.png' , width: 24 , height: 24,),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white.withAlpha(180),
                        child: Image.asset('assets/images/fb.png' , width: 24 , height: 24,),
                      ),
                    ),
                  ],
                ))
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                //fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            InkWell(
              onTap: onTap,
              child: CustomGradientText(
                coloredText,
                style: const TextStyle(
                  //fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
                gradient: const LinearGradient(colors: [deepPink, tButton]),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height / 12,
        ),
      ],
    );
  }
}
