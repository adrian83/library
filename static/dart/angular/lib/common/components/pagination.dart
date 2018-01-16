import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import '../page.dart';


class PageLink {
	String label;
	bool disabled;
	bool current;
	int page;

	PageLink(this.label, this.disabled, this.current, this.page);
}

abstract class PageSwitcher {
	void change(int pageNumber);
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

	@Input()
	PageSwitcher switcher;

   Future<Null> ngOnInit() async {
     print("Pagination initialized $switcher $page");
   }

	 void changePage(int page) {
		 print("change to $page");
		 switcher.change(page);
	 }

int get pages {
	if(this.page == null) {
		return 0;
	}
	var r = (page.getTotal / page.getSize);
	return r.isNaN ? 0 : r.ceil();
}

String get desc => this.page == null ? "" : page.toString();

List<PageLink> get links {
	if(this.page == null){
		return new List<PageLink>();
	}


	List<PageLink> l = new List<PageLink>();

	PageLink prev = new PageLink("<<", page.getCurrent == 0, false, page.getCurrent-1);
	l.add(prev);


	for (var i = 0; i < pages; i++) {
		PageLink li = new PageLink((i+1).toString(), false, page.getCurrent == i, i);
		l.add(li);
	}

	PageLink next = new PageLink(">>", page.getCurrent == (pages-1), false, page.getCurrent + 1);
	l.add(next);
	return l;
}


}
