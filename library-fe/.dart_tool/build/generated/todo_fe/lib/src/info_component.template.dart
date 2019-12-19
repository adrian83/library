// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'info_component.dart';
export 'info_component.dart';
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular/src/core/linker/app_view.dart';
import 'info_component.dart' as import1;
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
import 'package:angular/src/runtime/text_binding.dart' as import12;
import 'package:angular/src/runtime/interpolate.dart' as import13;

final List<dynamic> styles$InfoComponent = const [];

class ViewInfoComponent0 extends AppView<import1.InfoComponent> {
  ViewContainer _appEl_0;
  NgIf _NgIf_0_9;
  static import4.ComponentStyles _componentStyles;
  ViewInfoComponent0(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.component, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
    rootEl = import7.document.createElement('info');
  }
  static String get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:todo_fe/lib/src/info_component.dart' : null);
  }

  @override
  ComponentRef<import1.InfoComponent> build() {
    final _rootEl = rootEl;
    final import7.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    final _anchor_0 = import10.appendAnchor(parentRenderNode);
    _appEl_0 = ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_8 = TemplateRef(_appEl_0, viewFactory_InfoComponent1);
    _NgIf_0_9 = NgIf(_appEl_0, _TemplateRef_0_8);
    init0();
  }

  @override
  void detectChangesInternal() {
    final _ctx = ctx;
    _NgIf_0_9.ngIf = ((_ctx.message != null) && (_ctx.message != ''));
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
      (_componentStyles = (styles = (_componentStyles = import4.ComponentStyles.unscoped(styles$InfoComponent, _debugComponentUrl))));
    }
    componentStyles = styles;
  }
}

const ComponentFactory<import1.InfoComponent> _InfoComponentNgFactory = const ComponentFactory('info', viewFactory_InfoComponentHost0);
ComponentFactory<import1.InfoComponent> get InfoComponentNgFactory {
  return _InfoComponentNgFactory;
}

class _ViewInfoComponent1 extends AppView<import1.InfoComponent> {
  final import12.TextBinding _textBinding_2 = import12.TextBinding();
  _ViewInfoComponent1(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.embedded, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    initComponentStyles();
  }
  @override
  ComponentRef<import1.InfoComponent> build() {
    final _ctx = ctx;
    final doc = import7.document;
    final _el_0 = doc.createElement('div');
    this.updateChildClass(_el_0, 'alert alert-success alert-dismissible fade show');
    import10.setAttribute(_el_0, 'role', 'alert');
    final _el_1 = import10.appendElement(doc, _el_0, 'strong');
    _el_1.append(_textBinding_2.element);
    final _text_3 = import10.appendText(_el_0, ' ');
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
    _textBinding_2.updateText(import13.interpolateString0(_ctx.message));
  }
}

AppView<void> viewFactory_InfoComponent1(AppView<dynamic> parentView, int parentIndex) {
  return _ViewInfoComponent1(parentView, parentIndex);
}

final List<dynamic> styles$InfoComponentHost = const [];

class _ViewInfoComponentHost0 extends AppView<import1.InfoComponent> {
  ViewInfoComponent0 _compView_0;
  import1.InfoComponent _InfoComponent_0_5;
  _ViewInfoComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import5.ViewType.host, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  @override
  ComponentRef<import1.InfoComponent> build() {
    _compView_0 = ViewInfoComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _InfoComponent_0_5 = import1.InfoComponent();
    _compView_0.create(_InfoComponent_0_5, projectedNodes);
    init1(rootEl);
    return ComponentRef(0, this, rootEl, _InfoComponent_0_5);
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

AppView<import1.InfoComponent> viewFactory_InfoComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return _ViewInfoComponentHost0(parentView, parentIndex);
}

var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(InfoComponent, InfoComponentNgFactory);
  _ref0.initReflector();
}
