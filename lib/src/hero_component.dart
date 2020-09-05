

import 'package:angular/angular.dart';
import 'package:angular/core.dart';
import 'package:angular_app/src/hero.dart';

import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'my-hero',
  templateUrl: 'my_hero.html',
  directives: [coreDirectives, formDirectives] 
)

class HeroComponent {
  @Input()
  Hero hero;
}