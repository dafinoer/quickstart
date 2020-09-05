import 'package:angular/angular.dart';

import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/hero_component.dart';
import 'package:angular_app/src/hero_service.dart';


@Component(
  selector: 'my-app',
  templateUrl: 'view/app_component.html',
  styleUrls: ['view/app_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)]
)
class AppComponent implements OnInit{
  var title = 'Angular';
  // var subName = 'Flash';
  // Hero hero = Hero(1, 'Flash');
  List<Hero> heroes;
  
  HeroService _heroService;

  Hero selectedHero;

  AppComponent(this._heroService);

  void onSelect(Hero hero) {
    selectedHero = hero;
  }

  void _getHeroes() {
    // heroes = _heroService.listOfHeroes;
    _heroService.waitingHero().then((value) => this.heroes = value);
  }

  @override
  void ngOnInit() {
    _getHeroes();
  }
}
