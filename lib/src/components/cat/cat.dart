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

  final StreamController<String> _meowController = StreamController.broadcast();

  void doMeow() {
    _meowController.add('Meow from $name!');
  }
}
