import 'package:angular_app/src/model/cat.dart';
import 'package:angular_app/src/services/cat_service.dart';

class CatServiceLocalImpl implements CatService {
  Future<Iterable<Cat>> getCats() {
    return Future.value([
      Cat(1, 'Tom'),
      Cat(2, 'Oliver'),
    ]);
  }
}
