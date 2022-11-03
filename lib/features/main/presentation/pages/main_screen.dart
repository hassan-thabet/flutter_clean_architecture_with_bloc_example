
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../bloc/main_bloc.dart';
import '../bloc/main_states.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [darkP , offWhite , lightP]
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocConsumer<HomeBloc , HomeStates>(
            listener: (context , state){},
            builder: (context , state)
            {
              return Scaffold(
                backgroundColor: Colors.transparent,
                bottomNavigationBar: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: FloatingNavbar(
                    backgroundColor: Colors.white,
                    itemBorderRadius: 50,
                    selectedBackgroundColor: Colors.pink.withAlpha(16),
                    borderRadius: 50,

                    items: [
                      FloatingNavbarItem(
                          customWidget: SvgPicture.asset(
                            'assets/svg/apps.svg' ,
                            width: 20,
                            height: 20,
                            color: (BlocProvider.of<HomeBloc>(context).currentTab == 0) ? fButton : Colors.black87,
                          )
                      ),
                      FloatingNavbarItem(
                          customWidget: SvgPicture.asset(
                            'assets/svg/world.svg' ,
                            width: 20,
                            height: 20,
                            color: (BlocProvider.of<HomeBloc>(context).currentTab == 1) ? fButton : Colors.black87,
                          )
                      ),
                      FloatingNavbarItem(
                          customWidget: SvgPicture.asset(
                            'assets/svg/bell.svg' ,
                            width: 20,
                            height: 20,
                            color: (BlocProvider.of<HomeBloc>(context).currentTab == 2) ? fButton : Colors.black87,
                          )
                      ),
                      FloatingNavbarItem(
                          customWidget: SvgPicture.asset(
                            'assets/svg/envelope.svg' ,
                            width: 20,
                            height: 20,
                            color: (BlocProvider.of<HomeBloc>(context).currentTab == 3) ? fButton : Colors.black87,
                          )
                      ),
                      FloatingNavbarItem(
                          customWidget: SvgPicture.asset(
                            'assets/svg/user.svg' ,
                            width: 20,
                            height: 20,
                            color: (BlocProvider.of<HomeBloc>(context).currentTab == 4) ? fButton : Colors.black87,
                          )
                      ),
                    ],
                    onTap: (index)
                    {
                      BlocProvider.of<HomeBloc>(context).changeIndex(index);
                    },
                    currentIndex: BlocProvider.of<HomeBloc>(context).currentTab,
                  ),
                ),
                body: BlocProvider.of<HomeBloc>(context).screensList[BlocProvider.of<HomeBloc>(context).currentTab],
                //body:
              );
            },
        )
      )
    );
  }
}
