import 'package:angular2/core.dart';
import 'package:angular2/router.dart';


import 'a_comp.dart';
import 'b_comp.dart';

@Component(
    selector: 'my-app',
    template: '''
      <h1>{{title}}</h1>
      <a [routerLink]="['AComp']">acomp</a>
      <br/>
      <a [routerLink]="['BComp']">bcomp</a>
      <router-outlet></router-outlet>''',
    directives: const [ROUTER_DIRECTIVES], // components
    providers: const [ROUTER_PROVIDERS]) // services
@RouteConfig(const [
  const Route(path: '/authors', name: 'AComp', component: AComponent),
  const Route(path: '/books', name: 'BComp', component: BComponent)
])
class AppComponent {
  String title = 'Tour of Heroes';
}
