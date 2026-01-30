import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/cubit/home_layout_cubit.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeLayoutCubit(),
      child: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
        builder: (context, state) {
          var homeLayout = context.read<HomeLayoutCubit>();
          return Scaffold(
            body: homeLayout.screens[homeLayout.currentIndex],
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.black,
              currentIndex: homeLayout.currentIndex,
              onTap: (index) {
                context.read<HomeLayoutCubit>().changeBottomNav(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections_bookmark_outlined),
                  label: "Saved",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
