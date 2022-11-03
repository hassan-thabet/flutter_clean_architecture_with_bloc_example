import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_connect/features/auth/presentation/pages/register_screen.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../main/presentation/pages/main_screen.dart';
import '../components/users_area_footer.dart';
import '../components/users_area_header.dart';
import '../widgets/custom_gradient_text_button.dart';
import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [darkP, offWhite, darkP])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [

              const UsersAreaHeader(text: 'Login to continue finding partner . ',),

              const CustomTextFormField(
                hint: 'Email Address',
                iconData: Icons.alternate_email_rounded,
                isPassword: false,
              ),
              const CustomTextFormField(
                hint: 'Password',
                iconData: Icons.lock_outline_rounded,
                isPassword: true,
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password ? ',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Colors.black54),
                ),
              ),
              const Spacer(),

              CustomGradientTextButton(
                title: 'Login',
                firstColor: fButton,
                secondColor: sButton,
                thirdColor: tButton,
                onTab: () 
                {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainScreen()));
                },
              ),
              SizedBox(
                height: height / 20,
              ),

              UsersAreaFooter(
                text: 'Not a member ? ',
                coloredText: ' Register Now',
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
