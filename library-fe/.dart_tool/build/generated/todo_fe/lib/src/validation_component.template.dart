// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'validation_component.dart';
export 'validation_component.dart';
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'error.template.dart' as _ref0;
import 'package:angular/angular.template.dart' as _ref1;
import 'package:angular/src/core/linker/app_view.dart';
import 'validation_component.dart' as import1;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/core/linker/style_encapsulation.dart' as import4;
import 'package:angular/src/core/linker/view_type.dart' as import5;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import7;
import 'package:angular/src/runtime.dart' as import8;
import 'package:angular/angular.dart';
import 'package:angular/src/runtime/dom_helpers.dart' as import10;
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import12;
import 'package:angular/src/core/linker/app_view_utils.dart' as import13;
import 'package:angular/src/runtime/text_binding.dart' as import14;
import 'error.dart' as import15;
import 'package:angular/src/runtime/interpolate.dart' as import16;

final List<dynamic> styles$ValidationComponent = const [];

class ViewValidationComponent0 extends AppView<import1.ValidationComponent> {
  ViewContainer _appEl_0;
  NgIf _NgIf_0_9;
  static import4.ComponentStyles _componentStyles;
  ViewValidationComponent0(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.component, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
    rootEl = import7.document.createElement('validation');
  }
  static String get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:todo_fe/lib/src/validation_component.dart' : null);
  }

  @override
  ComponentRef<import1.ValidationComponent> build() {
    final _rootEl = rootEl;
    final import7.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    final _anchor_0 = import10.appendAnchor(parentRenderNode);
    _appEl_0 = ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_8 = TemplateRef(_appEl_0, viewFactory_ValidationComponent1);
    _NgIf_0_9 = NgIf(_appEl_0, _TemplateRef_0_8);
    init0();
  }

  @override
  void detectChangesInternal() {
    final _ctx = ctx;
    _NgIf_0_9.ngIf = ((_ctx.violations != null) && (_ctx.violations.length > 0));
    _appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_0.destroyNestedViews();
  }

  @override
  void initComponentStyles() {
    var styles = _componentStyles;
    if (identical(styles, null)) {
      (_componentStyles = (styles = (_componentStyles = import4.ComponentStyles.unscoped(styles$ValidationComponent, _debugComponentUrl))));
    }
    componentStyles = styles;
  }
}

const ComponentFactory<import1.ValidationComponent> _ValidationComponentNgFactory = const ComponentFactory('validation', viewFactory_ValidationComponentHost0);
ComponentFactory<import1.ValidationComponent> get ValidationComponentNgFactory {
  return _ValidationComponentNgFactory;
}

class _ViewValidationComponent1 extends AppView<import1.ValidationComponent> {
  ViewContainer _appEl_3;
  import12.NgFor _NgFor_3_9;
  var _expr_0;
  _ViewValidationComponent1(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.embedded, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
  }
  @override
  ComponentRef<import1.ValidationComponent> build() {
    final _ctx = ctx;
    final doc = import7.document;
    final _el_0 = doc.createElement('div');
    this.updateChildClass(_el_0, 'alert alert-warning alert-dismissible fade show');
    import10.setAttribute(_el_0, 'role', 'alert');
    final _el_1 = import10.appendElement(doc, _el_0, 'strong');
    final _text_2 = import10.appendText(_el_1, 'Invalid data');
    final _anchor_3 = import10.appendAnchor(_el_0);
    _appEl_3 = ViewContainer(3, 0, this, _anchor_3);
    TemplateRef _TemplateRef_3_8 = TemplateRef(_appEl_3, viewFactory_ValidationComponent2);
    _NgFor_3_9 = import12.NgFor(_appEl_3, _TemplateRef_3_8);
    final _el_4 = import10.appendElement(doc, _el_0, 'button');
    import10.setAttribute(_el_4, 'aria-label', 'Close');
    this.updateChildClass(_el_4, 'close');
    import10.setAttribute(_el_4, 'type', 'button');
    final _el_5 = import10.appendSpan(doc, _el_4);
    import10.setAttribute(_el_5, 'aria-hidden', 'true');
    final _text_6 = import10.appendText(_el_5, '×');
    _el_4.addEventListener('click', eventHandler0(_ctx.close));
    init1(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = ctx;
    final currVal_0 = _ctx.violations;
    if (import13.checkBinding(_expr_0, currVal_0)) {
      _NgFor_3_9.ngForOf = currVal_0;
      _expr_0 = currVal_0;
    }
    if ((!import13.AppViewUtils.throwOnChanges)) {
      _NgFor_3_9.ngDoCheck();
    }
    _appEl_3.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_3.destroyNestedViews();
  }
}

AppView<void> viewFactory_ValidationComponent1(AppView<dynamic> parentView, int parentIndex) {
  return _ViewValidationComponent1(parentView, parentIndex);
}

class _ViewValidationComponent2 extends AppView<import1.ValidationComponent> {
  final import14.TextBinding _textBinding_1 = import14.TextBinding();
  _ViewValidationComponent2(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.embedded, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
  }
  @override
  ComponentRef<import1.ValidationComponent> build() {
    final doc = import7.document;
    final _el_0 = doc.createElement('div');
    _el_0.append(_textBinding_1.element);
    init1(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_violation = import8.unsafeCast<import15.ConstraintViolation>(locals['\$implicit']);
    _textBinding_1.updateText(import16.interpolateString0(local_violation.message));
  }
}

AppView<void> viewFactory_ValidationComponent2(AppView<dynamic> parentView, int parentIndex) {
  return _ViewValidationComponent2(parentView, parentIndex);
}

final List<dynamic> styles$ValidationComponentHost = const [];

class _ViewValidationComponentHost0 extends AppView<import1.ValidationComponent> {
  ViewValidationComponent0 _compView_0;
  import1.ValidationComponent _ValidationComponent_0_5;
  _ViewValidationComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.host, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  @override
  ComponentRef<import1.ValidationComponent> build() {
    _compView_0 = ViewValidationComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _ValidationComponent_0_5 = import1.ValidationComponent();
    _compView_0.create(_ValidationComponent_0_5, projectedNodes);
    init1(rootEl);
    return ComponentRef(0, this, rootEl, _ValidationComponent_0_5);
  }

  @override
  void detectChangesInternal() {
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroyInternalState();
  }
}

AppView<import1.ValidationComponent> viewFactory_ValidationComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return _ViewValidationComponentHost0(parentView, parentIndex);
}

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(ValidationComponent, ValidationComponentNgFactory);
  _ref0.initReflector();
  _ref1.initReflector();
}
