import 'package:bloc_test/cubit2/Theme.dart';
import 'package:bloc_test/cubit2/cubit1.dart';
import 'package:bloc_test/cubit2/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsLayout extends StatefulWidget {
   NewsLayout({super.key});

  @override
  State<NewsLayout> createState() => _NewsLayoutState();
}

class _NewsLayoutState extends State<NewsLayout> {
Icon darkicon=Icon(Icons.dark_mode);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>NewsCubit(),
      child: BlocConsumer<NewsCubit,NewsState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit=NewsCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              title: Text("News"),
              actions: [
                IconButton(onPressed: (){}, icon:Icon(Icons.search)),
                IconButton(
                    onPressed: (){
                      setState(() {

                      });
                      context.read<ThemeCubit>().toggleTheme();
                      darkicon==Icon(Icons.dark_mode) ?darkicon=Icon(Icons.dark_mode):darkicon=Icon(Icons.light_mode);
                      // darkicon==Icon(Icons.light_mode) ?darkicon=Icon(Icons.light_mode):darkicon=Icon(Icons.dark_mode);
                      }
                    , icon: darkicon,
                ),
                // IconButton(onPressed: (){
                //   cubit.changemodetolight();
                // }, icon: Icon(Icons.brightness_5_rounded)),
              ],
            ),
            body: cubit.Screens[cubit.currentindex],
            bottomNavigationBar: BottomNavigationBar
              (items:cubit.BottomItem ,
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.currentindex,
                onTap: (index){
                cubit.changenav(index);
                },
            ),
          );
        },

      ),
    );
  }
}
