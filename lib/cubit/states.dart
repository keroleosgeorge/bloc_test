abstract class CounterStates {}

class counterintialstate extends CounterStates{}

class counterplusstate extends CounterStates{
  final int counter;

  counterplusstate(this.counter);

}

class counterminusstate extends CounterStates{
  final int counter;

  counterminusstate(this.counter);
}