import 'package:flutter/material.dart';
import 'package:quick_connect/features/auth/presentation/pages/register_screen.dart';
import '../../../../core/utils/app_colors.dart';
import '../widgets/custom_basic_text_button.dart';
import '../widgets/custom_gradient_text_button.dart';
import 'login_screen.dart';


class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [offWhite , lightP , darkP]
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(height: height / 8,),
              Image.asset('assets/images/started.png' , width: width - 20, height: height / 4,),
              SizedBox(height: height / 20,),
              const Text(
                'Discover Your Dream Partner' ,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize : 30 ,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                'Swipe right to like someone and if you',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize : 18 ,
                    fontFamily: 'Poppins',
                    color: Colors.black54
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                   Text(
                    'both like each other ? ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize : 18 ,
                        fontFamily: 'Poppins',
                        color: Colors.black54
                    ),
                  ),
                  Text(
                    ' it\'s a match',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize : 18 ,
                        fontFamily: 'Poppins',
                        color: tButton
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomGradientTextButton(
                  title: 'Login',
                  firstColor: fButton,
                  secondColor: sButton,
                  thirdColor: tButton,
                  onTab: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
              ),
              const SizedBox(height: 10,),
              CustomBasicTextButton(
                  title: 'Register',
                  titleColor: tButton,
                  onTab:()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                  },
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Flirt , Chat and Meet people around you !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize : 14 ,
                    fontFamily: 'Poppins',
                      color: Colors.black54

                  ),
                ),
              ),
              SizedBox(height: height / 12,),
            ],
          ),
        ),
      ),
    );
  }
}
