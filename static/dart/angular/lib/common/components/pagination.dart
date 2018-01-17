import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:logging/logging.dart';

import '../page.dart';

class PageLink {
  String _label;
  bool _disabled;
  bool _current;
  int _page;

  PageLink(this._label, this._disabled, this._current, this._page);

  String get label => this._label;
  bool get disabled => this._disabled;
  bool get current => this._current;
  int get page => this._page;
}

abstract class PageSwitcher {
  void change(int pageNumber);
}

@Component(
    selector: 'pagination',
    templateUrl: 'pagination.template.html',
    directives: const [formDirectives, CORE_DIRECTIVES])
class Pagination implements OnInit {
  static final Logger LOGGER = new Logger('Pagination');

  @Input()
  Page page;
  @Input()
  PageSwitcher switcher;

  Future<Null> ngOnInit() async {
    LOGGER.info("Pagination initialized. Switcher: $switcher, page: $page");
  }

  void changePage(int page) {
    LOGGER.info("Change to page $page");
    switcher.change(page);
  }

  int _pagesCount() {
    var count = this.page == null ? 0 : (page.total / page.size);
    return count.isNaN ? 0 : count.ceil();
  }

  List<PageLink> get links {
    List<PageLink> links = new List<PageLink>();

    if (this.page == null) {
      return links;
    }

    var current = page.current;
    var pages = _pagesCount();

    links.add(new PageLink("<<", current == 0, false, current - 1));

    for (var i = 0; i < pages; i++) {
      PageLink li = new PageLink((i + 1).toString(), false, current == i, i);
      links.add(li);
    }

    links.add(new PageLink(">>", current == (pages - 1), false, current + 1));
    return links;
  }
}
