import 'package:angular/angular.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html'
)
class AppComponent {
  String name = 'Hello DartAngular';

  void handleNameChange(String inputValue) {
    name = inputValue;
  }
}
