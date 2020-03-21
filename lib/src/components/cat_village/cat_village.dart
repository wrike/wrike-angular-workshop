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
class CatVillageComponent implements OnInit, AfterChanges, OnDestroy {
  @Input()
  String villageName;

  final villageEvents = <String>[];

  void handleMeow(String message) {
    villageEvents.add(message);
  }

  @override
  void ngOnInit() {
    villageEvents.add('OnInit');
  }

  @override
  void ngAfterChanges() {
    villageEvents.add('AfterChanges');
  }

  @override
  void ngOnDestroy() {
    villageEvents.add('OnDestroy');
  }
}
