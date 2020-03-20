import 'dart:convert';

import 'package:angular_app/src/model/cat.dart';
import 'package:angular_app/src/services/cat_service.dart';
import 'package:http/http.dart' as http;

class CatServiceHttpImpl implements CatService {
  Future<Iterable<Cat>> getCats() async {
    final response = await http.get('http://www.mocky.io/v2/5e74fd383000004195a5f8b9');
    final cats = json.decode(response.body) as Iterable;

    return cats.map((json) => Cat(json['id'], json['name']));
  }
}
