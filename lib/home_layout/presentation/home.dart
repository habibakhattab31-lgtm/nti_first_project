import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_first_project/home_layout/presentation/top_collection.dart';

import '../data/cubit/bar_cubit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocProvider(
        create: (BuildContext context) => BarCubit(),
        child: BlocBuilder<BarCubit, BarState>(
          builder: (context, state) {
            var BarConst = context.read<BarCubit>();
            return SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text.rich(
                    TextSpan(
                      text: "Selling the ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "most popular ",
                          style: TextStyle(color: Colors.green, fontSize: 35),
                        ),
                        TextSpan(text: " NFT is only here"),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: BarConst.words.length,
                      itemBuilder: (context, index) {
                        bool isSelected = BarConst.currentIndex == index;
                        return GestureDetector(
                          onTap: () {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              BarConst.changeNav(index);
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: isSelected ? Colors.green : Colors.white30,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              BarConst.words[index],
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  TopCollection(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
