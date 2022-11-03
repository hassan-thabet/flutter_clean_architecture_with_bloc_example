import 'package:flutter/material.dart';
import 'package:quick_connect/features/main/presentation/pages/main_screen.dart';
import '../../../../core/utils/app_colors.dart';
import '../components/users_area_footer.dart';
import '../components//users_area_header.dart';
import '../widgets/custom_gradient_text_button.dart';
import '../widgets/custom_text_form_field.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

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

              const UsersAreaHeader(text: 'Register to continue finding partner . ',),

              const CustomTextFormField(
                hint: 'Username',
                iconData: Icons.person_outline_rounded,
                isPassword: false,
              ),
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
              const CustomTextFormField(
                hint: 'Gender',
                iconData: Icons.people_outline_rounded,
                isPassword: false,
              ),
              const CustomTextFormField(
                hint: 'Birthday',
                iconData: Icons.calendar_month_rounded,
                isPassword: false,
              ),

              const Spacer(),

              CustomGradientTextButton(
                title: 'Register',
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
                text: 'Already have an account ? ',
                coloredText: ' Login Now',
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
