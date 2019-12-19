// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'todo_list_component.dart';
export 'todo_list_component.dart';
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'error_component.template.dart' as _ref0;
import 'form_component.template.dart' as _ref1;
import 'info_component.template.dart' as _ref2;
import 'package:angular/angular.template.dart' as _ref3;
import 'package:angular_forms/angular_forms.template.dart' as _ref4;
import 'package:angular_router/angular_router.template.dart' as _ref5;
import 'route_paths.template.dart' as _ref6;
import 'routes.template.dart' as _ref7;
import 'store.template.dart' as _ref8;
import 'todo.template.dart' as _ref9;
import 'todo_service.template.dart' as _ref10;
import 'validation_component.template.dart' as _ref11;
import 'package:angular/src/core/linker/app_view.dart';
import 'todo_list_component.dart' as import1;
import 'error_component.template.dart' as import2;
import 'error_component.dart' as import3;
import 'validation_component.template.dart' as import4;
import 'validation_component.dart' as import5;
import 'info_component.template.dart' as import6;
import 'info_component.dart' as import7;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import9;
import 'dart:html' as import10;
import 'package:angular/src/core/linker/style_encapsulation.dart' as import11;
import 'package:angular/src/core/linker/view_type.dart' as import12;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/runtime.dart' as import14;
import 'package:angular/angular.dart';
import 'package:angular/src/runtime/dom_helpers.dart' as import16;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import18;
import 'package:angular/src/common/directives/ng_if.dart';
import 'todo.dart' as import20;
import 'package:angular/src/runtime/text_binding.dart' as import21;
import 'package:angular/src/runtime/interpolate.dart' as import22;
import 'package:angular_forms/src/directives/default_value_accessor.dart' as import23;
import 'package:angular_forms/src/directives/control_value_accessor.dart' as import24;
import 'package:angular_forms/src/directives/ng_model.dart' as import25;
import 'package:angular/src/core/di/opaque_token.dart' as import26;
import 'package:angular_forms/src/directives/control_value_accessor.dart' as import27;
import 'package:angular_forms/src/directives/ng_control.dart' as import28;
import 'store.dart' as import29;
import 'package:angular/src/di/errors.dart' as import30;
import 'todo_service.dart' as import31;
import 'package:http/src/client.dart' as import32;
import 'package:angular_router/src/router/router.dart' as import33;

final List<dynamic> styles$TodoListComponent = const [];

class ViewTodoListComponent0 extends AppView<import1.TodoListComponent> {
  import2.ViewErrorComponent0 _compView_4;
  import3.ErrorComponent _ErrorComponent_4_5;
  import4.ViewValidationComponent0 _compView_6;
  import5.ValidationComponent _ValidationComponent_6_5;
  import6.ViewInfoComponent0 _compView_8;
  import7.InfoComponent _InfoComponent_8_5;
  ViewContainer _appEl_23;
  import9.NgFor _NgFor_23_9;
  String _expr_0;
  var _expr_1;
  var _expr_2;
  var _expr_3;
  String _expr_4;
  var _expr_5;
  var _expr_6;
  import10.InputElement _el_14;
  static import11.ComponentStyles _componentStyles;
  ViewTodoListComponent0(AppView<dynamic> parentView, int parentIndex) : super(import12.ViewType.component, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
    rootEl = import10.document.createElement('todo-list');
  }
  static String get _debugComponentUrl {
    return (import14.isDevMode ? 'asset:todo_fe/lib/src/todo_list_component.dart' : null);
  }

  @override
  ComponentRef<import1.TodoListComponent> build() {
    final _rootEl = rootEl;
    final import10.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    final doc = import10.document;
    final _el_0 = import16.appendElement(doc, parentRenderNode, 'h3');
    final _text_1 = import16.appendText(_el_0, 'New TODO');
    final _el_2 = import16.appendElement(doc, parentRenderNode, 'br');
    final _el_3 = import16.appendDiv(doc, parentRenderNode);
    _compView_4 = import2.ViewErrorComponent0(this, 4);
    final _el_4 = _compView_4.rootEl;
    _el_3.append(_el_4);
    _ErrorComponent_4_5 = import3.ErrorComponent();
    _compView_4.create0(_ErrorComponent_4_5);
    final _el_5 = import16.appendDiv(doc, parentRenderNode);
    _compView_6 = import4.ViewValidationComponent0(this, 6);
    final _el_6 = _compView_6.rootEl;
    _el_5.append(_el_6);
    _ValidationComponent_6_5 = import5.ValidationComponent();
    _compView_6.create0(_ValidationComponent_6_5);
    final _el_7 = import16.appendDiv(doc, parentRenderNode);
    _compView_8 = import6.ViewInfoComponent0(this, 8);
    final _el_8 = _compView_8.rootEl;
    _el_7.append(_el_8);
    _InfoComponent_8_5 = import7.InfoComponent();
    _compView_8.create0(_InfoComponent_8_5);
    final _el_9 = import16.appendDiv(doc, parentRenderNode);
    final _el_10 = import16.appendDiv(doc, _el_9);
    this.updateChildClass(_el_10, 'form-group');
    final _el_11 = import16.appendElement(doc, _el_10, 'label');
    import16.setAttribute(_el_11, 'for', 'textInput');
    final _text_12 = import16.appendText(_el_11, 'Put TODO text here');
    final _text_13 = import16.appendText(_el_10, ' ');
    _el_14 = import16.appendElement(doc, _el_10, 'input');
    this.updateChildClass(_el_14, 'form-control');
    import16.setAttribute(_el_14, 'id', 'textInput');
    import16.setAttribute(_el_14, 'placeholder', 'Enter text');
    import16.setAttribute(_el_14, 'type', 'text');
    final _el_15 = import16.appendElement(doc, _el_9, 'button');
    this.updateChildClass(_el_15, 'btn btn-primary');
    final _text_16 = import16.appendText(_el_15, 'Create');
    final _el_17 = import16.appendElement(doc, parentRenderNode, 'br');
    final _el_18 = import16.appendElement(doc, parentRenderNode, 'br');
    final _el_19 = import16.appendElement(doc, parentRenderNode, 'br');
    final _el_20 = import16.appendElement(doc, parentRenderNode, 'h3');
    final _text_21 = import16.appendText(_el_20, 'TODOs');
    final _el_22 = import16.appendElement(doc, parentRenderNode, 'br');
    final _anchor_23 = import16.appendAnchor(parentRenderNode);
    _appEl_23 = ViewContainer(23, null, this, _anchor_23);
    TemplateRef _TemplateRef_23_8 = TemplateRef(_appEl_23, viewFactory_TodoListComponent1);
    _NgFor_23_9 = import9.NgFor(_appEl_23, _TemplateRef_23_8);
    _el_15.addEventListener('click', eventHandler1(_handle_click_15_0));
    init0();
  }

  @override
  void detectChangesInternal() {
    final _ctx = ctx;
    final currVal_0 = _ctx.errorMsg;
    if (import18.checkBinding(_expr_0, currVal_0)) {
      _ErrorComponent_4_5.message = currVal_0;
      _expr_0 = currVal_0;
    }
    final currVal_1 = _ctx.hideError;
    if (import18.checkBinding(_expr_1, currVal_1)) {
      _ErrorComponent_4_5.hide = currVal_1;
      _expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.violations;
    if (import18.checkBinding(_expr_2, currVal_2)) {
      _ValidationComponent_6_5.violations = currVal_2;
      _expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.hideConstraintViolation;
    if (import18.checkBinding(_expr_3, currVal_3)) {
      _ValidationComponent_6_5.hide = currVal_3;
      _expr_3 = currVal_3;
    }
    final currVal_4 = _ctx.infoMsg;
    if (import18.checkBinding(_expr_4, currVal_4)) {
      _InfoComponent_8_5.message = currVal_4;
      _expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.hideInfo;
    if (import18.checkBinding(_expr_5, currVal_5)) {
      _InfoComponent_8_5.hide = currVal_5;
      _expr_5 = currVal_5;
    }
    final currVal_6 = _ctx.todos;
    if (import18.checkBinding(_expr_6, currVal_6)) {
      _NgFor_23_9.ngForOf = currVal_6;
      _expr_6 = currVal_6;
    }
    if ((!import18.AppViewUtils.throwOnChanges)) {
      _NgFor_23_9.ngDoCheck();
    }
    _appEl_23.detectChangesInNestedViews();
    _compView_4.detectChanges();
    _compView_6.detectChanges();
    _compView_8.detectChanges();
  }

  @override
  void destroyInternal() {
    _appEl_23.destroyNestedViews();
    _compView_4.destroyInternalState();
    _compView_6.destroyInternalState();
    _compView_8.destroyInternalState();
  }

  void _handle_click_15_0($event) {
    final local_text = _el_14;
    final _ctx = ctx;
    _ctx.create(local_text.value);
  }

  @override
  void initComponentStyles() {
    var styles = _componentStyles;
    if (identical(styles, null)) {
      (_componentStyles = (styles = (_componentStyles = import11.ComponentStyles.unscoped(styles$TodoListComponent, _debugComponentUrl))));
    }
    componentStyles = styles;
  }
}

const ComponentFactory<import1.TodoListComponent> _TodoListComponentNgFactory = const ComponentFactory('todo-list', viewFactory_TodoListComponentHost0);
ComponentFactory<import1.TodoListComponent> get TodoListComponentNgFactory {
  return _TodoListComponentNgFactory;
}

class _ViewTodoListComponent1 extends AppView<import1.TodoListComponent> {
  ViewContainer _appEl_9;
  NgIf _NgIf_9_9;
  ViewContainer _appEl_10;
  NgIf _NgIf_10_9;
  _ViewTodoListComponent1(AppView<dynamic> parentView, int parentIndex) : super(import12.ViewType.embedded, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
  }
  @override
  ComponentRef<import1.TodoListComponent> build() {
    final doc = import10.document;
    final _el_0 = doc.createElement('div');
    final _el_1 = import16.appendDiv(doc, _el_0);
    this.updateChildClass(_el_1, 'card border-primary mb-3');
    final _el_2 = import16.appendDiv(doc, _el_1);
    this.updateChildClass(_el_2, 'card-header text-right');
    final _el_3 = import16.appendElement(doc, _el_2, 'button');
    this.updateChildClass(_el_3, 'btn btn-primary');
    final _el_4 = import16.appendElement(doc, _el_3, 'i');
    this.updateChildClass(_el_4, 'fas fa-edit');
    final _text_5 = import16.appendText(_el_2, ' ');
    final _el_6 = import16.appendElement(doc, _el_2, 'button');
    this.updateChildClass(_el_6, 'btn btn-primary');
    final _el_7 = import16.appendElement(doc, _el_6, 'i');
    this.updateChildClass(_el_7, 'far fa-trash-alt');
    final _el_8 = import16.appendDiv(doc, _el_1);
    this.updateChildClass(_el_8, 'card-body text-primary');
    final _anchor_9 = import16.appendAnchor(_el_8);
    _appEl_9 = ViewContainer(9, 8, this, _anchor_9);
    TemplateRef _TemplateRef_9_8 = TemplateRef(_appEl_9, viewFactory_TodoListComponent2);
    _NgIf_9_9 = NgIf(_appEl_9, _TemplateRef_9_8);
    final _anchor_10 = import16.appendAnchor(_el_8);
    _appEl_10 = ViewContainer(10, 8, this, _anchor_10);
    TemplateRef _TemplateRef_10_8 = TemplateRef(_appEl_10, viewFactory_TodoListComponent3);
    _NgIf_10_9 = NgIf(_appEl_10, _TemplateRef_10_8);
    _el_3.addEventListener('click', eventHandler1(_handle_click_3_0));
    _el_6.addEventListener('click', eventHandler1(_handle_click_6_0));
    init1(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = ctx;
    final local_todo = import14.unsafeCast<import20.Todo>(locals['\$implicit']);
    _NgIf_9_9.ngIf = ((_ctx.selected == null) || ((_ctx.selected != null) && (_ctx.selected.id != local_todo.id)));
    _NgIf_10_9.ngIf = ((_ctx.selected != null) && (_ctx.selected.id == local_todo.id));
    _appEl_9.detectChangesInNestedViews();
    _appEl_10.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_9.destroyNestedViews();
    _appEl_10.destroyNestedViews();
  }

  void _handle_click_3_0($event) {
    final local_todo = import14.unsafeCast<import20.Todo>(locals['\$implicit']);
    final _ctx = ctx;
    _ctx.select(local_todo);
  }

  void _handle_click_6_0($event) {
    final local_todo = import14.unsafeCast<import20.Todo>(locals['\$implicit']);
    final _ctx = ctx;
    _ctx.delete(local_todo.id);
  }
}

AppView<void> viewFactory_TodoListComponent1(AppView<dynamic> parentView, int parentIndex) {
  return _ViewTodoListComponent1(parentView, parentIndex);
}

class _ViewTodoListComponent2 extends AppView<import1.TodoListComponent> {
  final import21.TextBinding _textBinding_1 = import21.TextBinding();
  _ViewTodoListComponent2(AppView<dynamic> parentView, int parentIndex) : super(import12.ViewType.embedded, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
  }
  @override
  ComponentRef<import1.TodoListComponent> build() {
    final doc = import10.document;
    final _el_0 = doc.createElement('p');
    this.updateChildClass(_el_0, 'card-text');
    _el_0.append(_textBinding_1.element);
    init1(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_todo = import14.unsafeCast<import20.Todo>(parentView.locals['\$implicit']);
    _textBinding_1.updateText(import22.interpolateString0(local_todo.text));
  }
}

AppView<void> viewFactory_TodoListComponent2(AppView<dynamic> parentView, int parentIndex) {
  return _ViewTodoListComponent2(parentView, parentIndex);
}

class _ViewTodoListComponent3 extends AppView<import1.TodoListComponent> {
  import23.DefaultValueAccessor _DefaultValueAccessor_2_5;
  List<import24.ControlValueAccessor<dynamic>> _NgValueAccessor_2_6;
  import25.NgModel _NgModel_2_7;
  _ViewTodoListComponent3(AppView<dynamic> parentView, int parentIndex) : super(import12.ViewType.embedded, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
  }
  @override
  ComponentRef<import1.TodoListComponent> build() {
    final _ctx = ctx;
    final doc = import10.document;
    final _el_0 = doc.createElement('div');
    final _el_1 = import16.appendDiv(doc, _el_0);
    this.updateChildClass(_el_1, 'form-group');
    final _el_2 = import16.appendElement(doc, _el_1, 'input');
    this.updateChildClass(_el_2, 'form-control');
    import16.setAttribute(_el_2, 'id', 'textInput');
    import16.setAttribute(_el_2, 'placeholder', 'Enter text');
    import16.setAttribute(_el_2, 'type', 'text');
    _DefaultValueAccessor_2_5 = import23.DefaultValueAccessor(_el_2);
    _NgValueAccessor_2_6 = [_DefaultValueAccessor_2_5];
    _NgModel_2_7 = import25.NgModel(null, _NgValueAccessor_2_6);
    final _el_3 = import16.appendElement(doc, _el_0, 'button');
    this.updateChildClass(_el_3, 'btn btn-primary');
    final _text_4 = import16.appendText(_el_3, 'Update');
    _el_2.addEventListener('blur', eventHandler0(_DefaultValueAccessor_2_5.touchHandler));
    _el_2.addEventListener('input', eventHandler1(_handle_input_2_2));
    final subscription_0 = _NgModel_2_7.update.listen(eventHandler1(_handle_ngModelChange_2_0));
    _el_3.addEventListener('click', eventHandler0(_ctx.update));
    init([_el_0], [subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((2 == nodeIndex)) {
      if (identical(token, const import26.MultiToken<import27.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return _NgValueAccessor_2_6;
      }
      if ((identical(token, import25.NgModel) || identical(token, import28.NgControl))) {
        return _NgModel_2_7;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = ctx;
    bool changed = false;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    _NgModel_2_7.model = _ctx.selected.text;
    _NgModel_2_7.ngAfterChanges();
    if (((!import18.AppViewUtils.throwOnChanges) && firstCheck)) {
      _NgModel_2_7.ngOnInit();
    }
  }

  void _handle_ngModelChange_2_0($event) {
    final _ctx = ctx;
    _ctx.selected.text = $event;
  }

  void _handle_input_2_2($event) {
    _DefaultValueAccessor_2_5.handleChange($event.target.value);
  }
}

AppView<void> viewFactory_TodoListComponent3(AppView<dynamic> parentView, int parentIndex) {
  return _ViewTodoListComponent3(parentView, parentIndex);
}

final List<dynamic> styles$TodoListComponentHost = const [];

class _ViewTodoListComponentHost0 extends AppView<import1.TodoListComponent> {
  ViewTodoListComponent0 _compView_0;
  import29.Store _Store_0_5;
  dynamic _TodoService_0_6;
  import1.TodoListComponent _TodoListComponent_0_7;
  _ViewTodoListComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import12.ViewType.host, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  @override
  ComponentRef<import1.TodoListComponent> build() {
    _compView_0 = ViewTodoListComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _Store_0_5 = import29.Store();
    _TodoService_0_6 = (import14.isDevMode
        ? import30.debugInjectorWrap(import31.TodoService, () {
            return import31.TodoService(this.injectorGet(import32.Client, viewData.parentIndex), _Store_0_5);
          })
        : import31.TodoService(this.injectorGet(import32.Client, viewData.parentIndex), _Store_0_5));
    _TodoListComponent_0_7 = (import14.isDevMode
        ? import30.debugInjectorWrap(import1.TodoListComponent, () {
            return import1.TodoListComponent(_TodoService_0_6, this.injectorGet(import33.Router, viewData.parentIndex));
          })
        : import1.TodoListComponent(_TodoService_0_6, this.injectorGet(import33.Router, viewData.parentIndex)));
    _compView_0.create(_TodoListComponent_0_7, projectedNodes);
    init1(rootEl);
    return ComponentRef(0, this, rootEl, _TodoListComponent_0_7);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((0 == nodeIndex)) {
      if (identical(token, import29.Store)) {
        return _Store_0_5;
      }
      if (identical(token, import31.TodoService)) {
        return _TodoService_0_6;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = (this.cdState == 0);
    if (((!import18.AppViewUtils.throwOnChanges) && firstCheck)) {
      _TodoListComponent_0_7.ngOnInit();
    }
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroyInternalState();
  }
}

AppView<import1.TodoListComponent> viewFactory_TodoListComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return _ViewTodoListComponentHost0(parentView, parentIndex);
}

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(TodoListComponent, TodoListComponentNgFactory);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
  _ref7.initReflector();
  _ref8.initReflector();
  _ref9.initReflector();
  _ref10.initReflector();
  _ref11.initReflector();
}
