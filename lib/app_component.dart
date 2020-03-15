import 'package:angular/angular.dart';
import 'package:angular_app/components/cat_village/cat_village.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    CatVillageComponent,
  ],
)
class AppComponent {
  String villageName = 'Catville';

  void handleNameChange(String inputValue) {
    villageName = inputValue;
  }
}
