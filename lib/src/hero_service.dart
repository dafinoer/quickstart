import 'package:angular_app/src/hero.dart';

class HeroService {
  List<Hero> listOfHeroes = Hero.listOfHeroes();

  Future<List<Hero>> fetchListHero() async => Hero.listOfHeroes();

  Future<List<Hero>> waitingHero() async {
    await Future.delayed(Duration(milliseconds: 800));
    return Hero.listOfHeroes();
  }
}
