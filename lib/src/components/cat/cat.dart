import 'dart:async';

import 'package:angular/angular.dart';

@Component(
  selector: 'cat',
  templateUrl: 'cat.html',
  styleUrls: ['cat.css'],
)
class CatComponent {
  @Input()
  String name;

  @Output()
  Stream<String> get onMeow => _meowController.stream;

  @Output()
  Stream<String> get onFeed => _feedController.stream;

  final StreamController<String> _meowController = StreamController.broadcast();

  final StreamController<String> _feedController = StreamController();

  void doMeow() {
    _meowController.add('Meow from $name!');
  }

  void askForFood() {
    _feedController.add('Please feed me!');
  }
}
