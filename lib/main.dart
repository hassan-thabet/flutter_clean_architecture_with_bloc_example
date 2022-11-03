import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_connect/features/main/presentation/bloc/main_bloc.dart';
import 'package:quick_connect/features/auth/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,

      ),
      child: MultiBlocProvider(
          providers:
          [
            BlocProvider(create: (context) => HomeBloc()),
          ],
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'QuickConnect',
            home: SplashScreen(),
          ),
      )
    );
  }
}
