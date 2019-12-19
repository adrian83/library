import 'dart:convert';

import 'package:http/http.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';

import 'route_paths.dart';
import 'routes.dart';
import 'todo_service.dart';
import 'todo.dart';
import 'store.dart';
import 'error_component.dart';
import 'validation_component.dart';
import 'info_component.dart';
import 'form_component.dart';


@Component(
  selector: 'todo-list',
  templateUrl: 'todo_list_component.html', 
  directives: [coreDirectives, routerDirectives, formDirectives, ErrorComponent, ValidationComponent, InfoComponent],
  exports: [RoutePaths, Routes],
  providers: [ClassProvider(Store), ClassProvider(TodoService)],
  pipes: [commonPipes],
)
class TodoListComponent extends FormComponent implements OnInit {

  TodoService _todoService;

  List<Todo> todos = [];
  Todo selected;
  String editedText;


  TodoListComponent(this._todoService, Router router): super(router);

  void ngOnInit() async {
    handleErrors(_todoService.getAll(), onSuccessfullListing);
  }

  void onSuccessfullListing(Response response) {
    Iterable l = json.decode(response.body);
    todos = l.map((json) => Todo.fromJson(json)).toList();
    todos.sort((a, b) => b.id.compareTo(a.id));
  }

  void onSuccessfullCreating(Response response) {
    infoMsg = "Todo created";
    var todo = Todo.fromJson(json.decode(response.body));
    todos.insert(0, todo);
  }

  void Function(Response response) onSuccessfullDeleting(int id) {
    void Function(Response response) fun = (response){
      infoMsg = "Todo removed";
      todos.removeWhere((todo) => todo.id == id);
    };
    return fun;
  }

  void create(String text) async {
    handleErrors(_todoService.create(text), onSuccessfullCreating);
  }

  void delete(int id) {
    handleErrors(_todoService.delete(id), onSuccessfullDeleting(id));
  }

  void select(Todo todo) {
    if(selected != null && editedText != null) {
      selected.text = editedText;
    }
    selected = todo;
    editedText = todo.text;
  }

  void onSuccessfullUpdating(Response response) {
    infoMsg = "Todo updated";
    selected = null; 
    editedText = null;
  }

  void update() {
    handleErrors(_todoService.update(selected), onSuccessfullUpdating);
  }

}


