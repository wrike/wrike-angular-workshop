import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_app/src/services/food_service.dart';

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

  final FoodService _foodService;

  CatComponent(this._foodService);

  void doMeow() {
    _meowController.add('Meow from $name!');
  }

  void askForFood() {
    final portions = _foodService.askForFood();
    final foodLeft = _foodService.foodLeft;

    _feedController.add('Thanks for $portions portions! We have $foodLeft more');
  }
}
