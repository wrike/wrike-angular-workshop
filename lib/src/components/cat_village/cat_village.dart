import 'package:angular/angular.dart';
import 'package:angular_app/src/components/cat/cat.dart';
import 'package:angular_app/src/model/cat.dart';
import 'package:angular_app/src/services/cat_service.dart';

@Component(
  selector: 'cat-village',
  templateUrl: 'cat_village.html',
  directives: [
    NgIf,
    NgFor,
    CatComponent,
  ],
  providers: [
    ClassProvider<CatService>(CatService)
  ]
)
class CatVillageComponent implements OnInit, AfterChanges, OnDestroy {
  @Input()
  String villageName;

  final villageEvents = <String>[];

  final CatService _catService;

  Iterable<Cat> cats;

  CatVillageComponent(this._catService) {
    cats = _catService.getCats();
  }

  void handleMeow(String message) {
    villageEvents.add(message);
  }

  @override
  void ngOnInit() {
    villageEvents.add('ngOnInit');
  }

  @override
  void ngAfterChanges() {
    villageEvents.add('AfterChanges');
  }

  @override
  void ngOnDestroy() {
    villageEvents.add('ngOnDestroy');
  }
}
