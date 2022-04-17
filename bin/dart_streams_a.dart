import 'dart:html';

/*
  This code was not compiled from Dart to JS using webdev build
*/
void main() {
  final Element? button = querySelector('button');
  final input = querySelector("input") as InputElement;

  /*
    Previous Code

  button?.onClick
      .timeout(Duration(seconds: 1),
          onTimeout: ((sink) => sink.addError('You lost')))
      .listen((event) {}, onError: (err) => print(err));
  */

  button!.onClick.take(4).where((event) => input.value == 'banana').listen(
      // error on .value even with ! null check
      (event) => print('You got it'),
      onDone: () => print('Nope bad guesses'));
}
