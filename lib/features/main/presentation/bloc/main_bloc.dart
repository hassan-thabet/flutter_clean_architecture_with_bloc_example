
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../chat/presentation/pages/chat_tab.dart';
import '../../../explore/presentation/pages/explore_tab.dart';
import '../../../home/presentation/pages/home_tab.dart';
import '../../../notifications/presentation/pages/notifications_tab.dart';
import '../../../profile/presentation/pages/profile_tab.dart';
import 'main_states.dart';


class HomeBloc extends Cubit<HomeStates>{
  HomeBloc() : super(HomeInitialState());


  int currentTab = 0;


  List<Widget> screensList = const [
    HomeTab(),
    ExploreTab(),
    NotificationsTab(),
    ChatTab(),
    ProfileTab(),
  ];


  void changeIndex(int index) {
    currentTab = index;
    emit(TabBarChangeState());
  }
}