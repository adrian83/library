import 'dart:mirrors';

abstract class Serializable {

  Map toJson() {
    InstanceMirror im = reflect(this);
    ClassMirror cm = im.type;
    return _props(cm, im);
  }

  Map _props(ClassMirror cm, InstanceMirror im) {
    Map map = new Map();
    if(cm == null) {
      return map;
    }

    var decls = cm.declarations.values.where((dm) => dm is VariableMirror);
    decls.forEach((dm) {
      var key = MirrorSystem.getName(dm.simpleName);
      var val = im.getField(dm.simpleName).reflectee;
      map[key] = val;
    });

    map.addAll(_props(cm.superclass, im));
    return map;
  }

}
