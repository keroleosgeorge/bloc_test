import 'package:bloc/bloc.dart';
import 'package:bloc_test/busines.dart';
import 'package:bloc_test/cubit2/states.dart';
import 'package:bloc_test/science.dart';
import 'package:bloc_test/sports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class NewsCubit extends Cubit<NewsState>
{
  NewsCubit():super(Newsintialstate());

  static NewsCubit get(context)=>BlocProvider.of(context);

  int currentindex=0;

  List<BottomNavigationBarItem> BottomItem=
  [
    BottomNavigationBarItem(icon: Icon(Icons.business_center),label: "Busines"),
    BottomNavigationBarItem(icon: Icon(Icons.sports_baseball),label: "Sports"),
    BottomNavigationBarItem(icon: Icon(Icons.science),label: "Science"),
  ];


  List<Widget> Screens=
  [
    BusinisScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];

void changenav(int index)
{
  currentindex=index;
  emit(ChangeBottomnav());
}
//
// bool isDark=false;
//
//
// void changemode()
// {
//   isDark=!isDark;
//   emit(ChangeThememode());
// }
//
// void changemodetodark()
// {
//   isDark= true;
//   emit(ChangedarkThememode());
// }
//
//
//   void changemodetolight()
//   {
//     isDark= false;
//     emit(ChangelightThememode());
//   }

}