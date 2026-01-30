import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_first_project/home_layout/presentation/home.dart';
import 'package:nti_first_project/home_layout/presentation/profile.dart';
import 'package:nti_first_project/home_layout/presentation/saved.dart';
import 'package:nti_first_project/home_layout/presentation/search.dart';

part 'home_layout_state.dart';
class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());

  int currentIndex = 0;
  List<Widget> screens=[
    Home(),
    Search(),
    Saved(),
    Profile()
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(HomeLayoutChangeBottomNavState());
  }
}

