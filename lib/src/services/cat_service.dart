import 'package:angular_app/src/model/cat.dart';

class CatService {
  Iterable<Cat> getCats() {
    return [
      Cat(1, 'Tom'),
      Cat(2, 'Oliver'),
    ];
  }
}
