import 'dart:convert';

import 'package:http/http.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'route_paths.dart';
import 'routes.dart';
import 'book_service.dart';
import 'book.dart';
import 'error_component.dart';
import 'validation_component.dart';
import 'info_component.dart';
import 'form_component.dart';


@Component(
  selector: 'books-list',
  templateUrl: 'books_list_component.html', 
  directives: [coreDirectives, routerDirectives, formDirectives, ErrorComponent, ValidationComponent, InfoComponent],
  exports: [RoutePaths, Routes],
  providers: [ClassProvider(BookService)]
)
class BookListComponent extends FormComponent implements OnInit {

  BookService _bookService;

  List<Book> books = [];


  BookListComponent(this._bookService, Router router): super(router);

  void ngOnInit() async {
    handleErrors(_bookService.getAll(), onSuccessfullListing);
  }

  void onSuccessfullListing(Response response) {
    Iterable l = json.decode(response.body);
    books = l.map((json) => Book.fromJson(json)).toList();
  }

}


