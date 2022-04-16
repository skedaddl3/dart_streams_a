import 'dart:html';

/*
  This code was not compiled from Dart to JS using webdev build
*/
void main() {
  final Element? button = querySelector('button');

  button?.onClick
      .timeout(Duration(seconds: 1),
          onTimeout: ((sink) => sink.addError('You lost')))
      .listen((event) {}, onError: (err) => print(err));
}
