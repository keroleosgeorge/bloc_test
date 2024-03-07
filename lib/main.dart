import 'package:bloc/bloc.dart';
import 'package:bloc_test/Newslayout.dart';
import 'package:bloc_test/counter.dart';
import 'package:bloc_test/cubit/observer_bloc.dart';
import 'package:bloc_test/cubit2/Theme.dart';
import 'package:bloc_test/cubit2/cubit1.dart';
import 'package:bloc_test/cubit2/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (_) => ThemeCubit(),
       child:BlocBuilder<ThemeCubit, ThemeModeEnum>(
    builder: (context, themeMode) {
      return  MaterialApp(
        theme: ThemeData(
          brightness: themeMode == ThemeModeEnum.light ? Brightness.light : Brightness.dark,

          // Define your light mode theme colors here
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,

          // Define your dark mode theme colors here
        ),
        debugShowCheckedModeBanner: false,

        home:  NewsLayout(),
      );
    },
    ),
    );
  }
}
