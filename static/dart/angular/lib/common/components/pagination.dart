import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import '../page.dart';


class PageLink {
	String label;
	bool disabled;
	bool current;

	PageLink(this.label, this.disabled, this.current);
}

@Component(
		selector: 'pagination',
    templateUrl: 'pagination.template.html',
		directives: const[formDirectives, CORE_DIRECTIVES]
    )
class Pagination implements OnInit {
  String text = "this is test";

	@Input()
	Page page;

   Future<Null> ngOnInit() async {
     print("Pagination initialized");
   }

int get pages => this.page == null ? 0 : ((page.getTotal / page.getSize) + (page.getTotal % page.getSize == 0 ? 0 : 1));

String get desc => this.page == null ? "" : page.toString();

List<PageLink> get links {
	if(this.page == null){
		return new List<PageLink>();
	}



	List<PageLink> l = new List<PageLink>();

	PageLink prev = new PageLink("<<", page.getCurrent != 0, false);
	l.add(prev);




	PageLink next = new PageLink(">>", page.getCurrent != pages, false);
	l.add(next);
	return l;
}


}
