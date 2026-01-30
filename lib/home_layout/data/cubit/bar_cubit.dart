import 'package:flutter_bloc/flutter_bloc.dart';

part 'bar_state.dart';

class BarCubit extends Cubit<BarState> {
  BarCubit() : super(BarInitial());


  int currentIndex = 0;
  List<String> words = [
  "Trending",
  "By Artist",
  "Eth",
  "Btc",
  ];

  void changeNav(int index) {
    currentIndex = index;
    emit(BarChangeNavState());
  }
}
