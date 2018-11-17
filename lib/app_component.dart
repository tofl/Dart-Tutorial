import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/Hero.dart';
import 'src/mock_heroes.dart';

@Component(
  selector: 'my-app',
  directives: [coreDirectives, formDirectives],
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css']
)
class AppComponent {
  String title = 'Tour of heroes';
  Hero hero = Hero(1, 'Jacky');
}
