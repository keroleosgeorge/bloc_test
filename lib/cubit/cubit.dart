import 'package:bloc_test/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class countercubit extends Cubit<CounterStates>
{
  countercubit() :super(counterintialstate());

  static countercubit get(context)=>BlocProvider.of(context);

int counter = 1 ;

void minus(){
  counter--;
emit(counterminusstate(counter));
}


  void plus(){
    counter++;
emit(counterplusstate(counter));
  }

}