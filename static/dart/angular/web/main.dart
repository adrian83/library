import 'package:angular2/platform/browser.dart';
import 'package:http/browser_client.dart';

import '../lib/app_component.dart';


void main() {
	bootstrap(AppComponent, const [BrowserClient]);
}
