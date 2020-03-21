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
}
