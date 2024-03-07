import 'package:bloc_test/cubit/cubit.dart';
import 'package:bloc_test/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counter extends StatelessWidget {
  const counter({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) =>countercubit(),
      child: BlocConsumer<countercubit,CounterStates>(
        listener: (context,state){

          // if(state is counterplusstate){
          // print(state.counter);
          //   print("plus state");
          // };
          // if(state is counterminusstate){
          //   print("minus state");
          // print(state.counter);
          // };
        },
        builder: (context,state)
        {

          return Scaffold(
            appBar: AppBar(
              title: const Text("Counter",),

            ),
            body: Center(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){countercubit.get(context).plus();}, child: const Text("Plus")),
                  const SizedBox(width: 20,),
                  Text("${countercubit.get(context).counter}",style: const TextStyle(fontSize: 50)),
                  const SizedBox(width: 20,),
                  TextButton(onPressed: (){countercubit.get(context).minus();}, child: const Text("minus"))

                ],
              ),
            ),
          );
        },

      ),
    );
  }
}
