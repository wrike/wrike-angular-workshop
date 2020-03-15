import 'package:angular/angular.dart';
import 'package:angular_app/components/cat/cat.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    CatComponent,
  ],
)
class AppComponent {
  String name = 'Hello DartAngular';

  void handleNameChange(String inputValue) {
    name = inputValue;
  }
}
