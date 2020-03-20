import 'package:angular/angular.dart';
import 'package:angular_app/src/components/cat/cat.dart';

@Component(
  selector: 'cat-village',
  templateUrl: 'cat_village.html',
  directives: [
    NgIf,
    NgFor,
    CatComponent,
  ],
)
class CatVillageComponent {
  @Input()
  String villageName;

  final villageEvents = <String>[];

  void handleMeow(String message) {
    villageEvents.add(message);
  }
}
