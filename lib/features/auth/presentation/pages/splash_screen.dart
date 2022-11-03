
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../core/utils/app_colors.dart';
import 'get_started_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    Timer(const Duration(seconds: 4), (){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const GetStarted()));
    });

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [offWhite , lightPink , darkPink]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Spacer(),
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png'),
                  const Text(
                    'QuickConnect' ,
                    style: TextStyle(
                      fontSize : 20 ,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 40 , right: 25),
                  child : Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: lightPink,
                            width: 2
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(50))
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_forward_rounded , color: deepPink , size: 22,),
                      ),
                    ),
                  )
              ),
            ),



          ],
        ),
      ),
    );
  }
}
