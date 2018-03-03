import 'dart:mirrors';

abstract class Serializable {

  Map toJson() {

    InstanceMirror im = reflect(this);
    ClassMirror cm = im.type;

    var m1 = _props(cm, im);
    var m2 = _props(cm.superclass, im);

    m1.addAll(m2);

    return m1;
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

    return map;
  }


}
