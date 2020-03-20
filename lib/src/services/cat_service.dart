import 'package:angular_app/src/model/cat.dart';

abstract class CatService {
  Future<Iterable<Cat>> getCats();
}
