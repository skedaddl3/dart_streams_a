import 'dart:html';

/*
  This code was not compiled from Dart to JS using webdev build
*/
void main() {
  final Element? button = querySelector('button');

  //  final Element? input = querySelector('input'); Old Code
  //  changing type annotation causes error

  final input = querySelector("input") as InputElement; // refactored code

  /*
    Previous Code

  button?.onClick
      .timeout(Duration(seconds: 1),
          onTimeout: ((sink) => sink.addError('You lost')))
      .listen((event) {}, onError: (err) => print(err));
  */

  button!.onClick.take(4).where((event) => input.value == 'banana').listen(
      // error on .value even with ! null check
      // fixed using refactoring at variable declaration line 8
      (event) => print('You got it'),
      onDone: () => print('Nope bad guesses'));
}
