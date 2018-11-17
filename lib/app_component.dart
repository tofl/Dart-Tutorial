import 'package:angular/angular.dart';
import 'src/Hero.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css']
)
class AppComponent implements OnInit {
  final HeroService _heroService;
  String title = 'Tour of heroes';
  List<Hero> heroes;
  Hero selected;

  AppComponent(this._heroService);

  void ngOnInit() => _getHeroes();

  selectHero(Hero hero) {
    this.selected = hero;
  }

  void _getHeroes() {
    _heroService.getAll().then((heroes) => this.heroes = heroes);
  }

}
