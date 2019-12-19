define(['dart_sdk'], function(dart_sdk) {
  'use strict';
  const core = dart_sdk.core;
  const collection = dart_sdk.collection;
  const _js_helper = dart_sdk._js_helper;
  const async = dart_sdk.async;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  const logging = Object.create(dart.library);
  const $_set = dartx._set;
  const $putIfAbsent = dartx.putIfAbsent;
  const $startsWith = dartx.startsWith;
  const $lastIndexOf = dartx.lastIndexOf;
  const $substring = dartx.substring;
  const $toString = dartx.toString;
  const $_equals = dartx._equals;
  const $compareTo = dartx.compareTo;
  let UnmodifiableMapViewOfString$Logger = () => (UnmodifiableMapViewOfString$Logger = dart.constFn(collection.UnmodifiableMapView$(core.String, logging.Logger)))();
  let VoidToLogger = () => (VoidToLogger = dart.constFn(dart.fnType(logging.Logger, [])))();
  let LinkedMapOfString$Logger = () => (LinkedMapOfString$Logger = dart.constFn(_js_helper.LinkedMap$(core.String, logging.Logger)))();
  let StreamControllerOfLogRecord = () => (StreamControllerOfLogRecord = dart.constFn(async.StreamController$(logging.LogRecord)))();
  let IdentityMapOfString$Logger = () => (IdentityMapOfString$Logger = dart.constFn(_js_helper.IdentityMap$(core.String, logging.Logger)))();
  const CT = Object.create(null);
  dart.defineLazy(CT, {
    get C0() {
      return C0 = dart.const({
        __proto__: logging.Level.prototype,
        [Level_value]: 0,
        [Level_name]: "ALL"
      });
    },
    get C1() {
      return C1 = dart.const({
        __proto__: logging.Level.prototype,
        [Level_value]: 2000,
        [Level_name]: "OFF"
      });
    },
    get C2() {
      return C2 = dart.const({
        __proto__: logging.Level.prototype,
        [Level_value]: 300,
        [Level_name]: "FINEST"
      });
    },
    get C3() {
      return C3 = dart.const({
        __proto__: logging.Level.prototype,
        [Level_value]: 400,
        [Level_name]: "FINER"
      });
    },
    get C4() {
      return C4 = dart.const({
        __proto__: logging.Level.prototype,
        [Level_value]: 500,
        [Level_name]: "FINE"
      });
    },
    get C5() {
      return C5 = dart.const({
        __proto__: logging.Level.prototype,
        [Level_value]: 700,
        [Level_name]: "CONFIG"
      });
    },
    get C6() {
      return C6 = dart.const({
        __proto__: logging.Level.prototype,
        [Level_value]: 800,
        [Level_name]: "INFO"
      });
    },
    get C7() {
      return C7 = dart.const({
        __proto__: logging.Level.prototype,
        [Level_value]: 900,
        [Level_name]: "WARNING"
      });
    },
    get C8() {
      return C8 = dart.const({
        __proto__: logging.Level.prototype,
        [Level_value]: 1000,
        [Level_name]: "SEVERE"
      });
    },
    get C9() {
      return C9 = dart.const({
        __proto__: logging.Level.prototype,
        [Level_value]: 1200,
        [Level_name]: "SHOUT"
      });
    },
    get C10() {
      return C10 = dart.constList([C0 || CT.C0, C2 || CT.C2, C3 || CT.C3, C4 || CT.C4, C5 || CT.C5, C6 || CT.C6, C7 || CT.C7, C8 || CT.C8, C9 || CT.C9, C1 || CT.C1], logging.Level);
    }
  });
  const _level = dart.privateName(logging, "_level");
  const _controller = dart.privateName(logging, "_controller");
  const _children = dart.privateName(logging, "_children");
  const _getStream = dart.privateName(logging, "_getStream");
  const _publish = dart.privateName(logging, "_publish");
  const Logger_name = dart.privateName(logging, "Logger.name");
  const Logger_parent = dart.privateName(logging, "Logger.parent");
  const Logger_children = dart.privateName(logging, "Logger.children");
  logging.Logger = class Logger extends core.Object {
    get name() {
      return this[name$];
    }
    set name(value) {
      super.name = value;
    }
    get parent() {
      return this[parent$];
    }
    set parent(value) {
      super.parent = value;
    }
    get children() {
      return this[children$];
    }
    set children(value) {
      super.children = value;
    }
    get fullName() {
      return this.parent == null || this.parent.name === "" ? this.name : dart.str(this.parent.fullName) + "." + dart.str(this.name);
    }
    static new(name) {
      return logging.Logger._loggers[$putIfAbsent](name, dart.fn(() => logging.Logger._named(name), VoidToLogger()));
    }
    static detached(name) {
      return new logging.Logger._internal(name, null, new (LinkedMapOfString$Logger()).new());
    }
    static _named(name) {
      if (name[$startsWith](".")) {
        dart.throw(new core.ArgumentError.new("name shouldn't start with a '.'"));
      }
      let dot = name[$lastIndexOf](".");
      let parent = null;
      let thisName = null;
      if (dot === -1) {
        if (name !== "") parent = logging.Logger.new("");
        thisName = name;
      } else {
        parent = logging.Logger.new(name[$substring](0, dot));
        thisName = name[$substring](dot + 1);
      }
      return new logging.Logger._internal(thisName, parent, new (LinkedMapOfString$Logger()).new());
    }
    get level() {
      if (dart.test(logging.hierarchicalLoggingEnabled)) {
        if (this[_level] != null) return this[_level];
        if (this.parent != null) return this.parent.level;
      }
      return logging._rootLevel;
    }
    set level(value) {
      if (dart.test(logging.hierarchicalLoggingEnabled) && this.parent != null) {
        this[_level] = value;
      } else {
        if (this.parent != null) {
          dart.throw(new core.UnsupportedError.new("Please set \"hierarchicalLoggingEnabled\" to true if you want to " + "change the level on a non-root logger."));
        }
        logging._rootLevel = value;
      }
    }
    get onRecord() {
      return this[_getStream]();
    }
    clearListeners() {
      if (dart.test(logging.hierarchicalLoggingEnabled) || this.parent == null) {
        if (this[_controller] != null) {
          this[_controller].close();
          this[_controller] = null;
        }
      } else {
        logging.Logger.root.clearListeners();
      }
    }
    isLoggable(value) {
      return value['>='](this.level);
    }
    log(logLevel, message, error, stackTrace, zone) {
      if (error === void 0) error = null;
      if (stackTrace === void 0) stackTrace = null;
      if (zone === void 0) zone = null;
      let object = null;
      if (dart.test(this.isLoggable(logLevel))) {
        if (core.Function.is(message)) {
          message = dart.dcall(message, []);
        }
        let msg = null;
        if (typeof message == 'string') {
          msg = message;
        } else {
          msg = dart.toString(message);
          object = message;
        }
        if (stackTrace == null && dart.test(logLevel['>='](logging.recordStackTraceAtLevel))) {
          stackTrace = core.StackTrace.current;
          error == null ? error = "autogenerated stack trace for " + dart.str(logLevel) + " " + dart.str(msg) : null;
        }
        if (zone == null) zone = async.Zone.current;
        let record = new logging.LogRecord.new(logLevel, msg, this.fullName, error, stackTrace, zone, object);
        if (dart.test(logging.hierarchicalLoggingEnabled)) {
          let target = this;
          while (target != null) {
            target[_publish](record);
            target = target.parent;
          }
        } else {
          logging.Logger.root[_publish](record);
        }
      }
    }
    finest(message, error, stackTrace) {
      if (error === void 0) error = null;
      if (stackTrace === void 0) stackTrace = null;
      return this.log(logging.Level.FINEST, message, error, stackTrace);
    }
    finer(message, error, stackTrace) {
      if (error === void 0) error = null;
      if (stackTrace === void 0) stackTrace = null;
      return this.log(logging.Level.FINER, message, error, stackTrace);
    }
    fine(message, error, stackTrace) {
      if (error === void 0) error = null;
      if (stackTrace === void 0) stackTrace = null;
      return this.log(logging.Level.FINE, message, error, stackTrace);
    }
    config(message, error, stackTrace) {
      if (error === void 0) error = null;
      if (stackTrace === void 0) stackTrace = null;
      return this.log(logging.Level.CONFIG, message, error, stackTrace);
    }
    info(message, error, stackTrace) {
      if (error === void 0) error = null;
      if (stackTrace === void 0) stackTrace = null;
      return this.log(logging.Level.INFO, message, error, stackTrace);
    }
    warning(message, error, stackTrace) {
      if (error === void 0) error = null;
      if (stackTrace === void 0) stackTrace = null;
      return this.log(logging.Level.WARNING, message, error, stackTrace);
    }
    severe(message, error, stackTrace) {
      if (error === void 0) error = null;
      if (stackTrace === void 0) stackTrace = null;
      return this.log(logging.Level.SEVERE, message, error, stackTrace);
    }
    shout(message, error, stackTrace) {
      if (error === void 0) error = null;
      if (stackTrace === void 0) stackTrace = null;
      return this.log(logging.Level.SHOUT, message, error, stackTrace);
    }
    [_getStream]() {
      if (dart.test(logging.hierarchicalLoggingEnabled) || this.parent == null) {
        if (this[_controller] == null) {
          this[_controller] = StreamControllerOfLogRecord().broadcast({sync: true});
        }
        return this[_controller].stream;
      } else {
        return logging.Logger.root[_getStream]();
      }
    }
    [_publish](record) {
      if (this[_controller] != null) {
        this[_controller].add(record);
      }
    }
  };
  (logging.Logger._internal = function(name, parent, children) {
    this[_level] = null;
    this[_controller] = null;
    this[name$] = name;
    this[parent$] = parent;
    this[_children] = children;
    this[children$] = new (UnmodifiableMapViewOfString$Logger()).new(children);
    if (this.parent != null) this.parent[_children][$_set](this.name, this);
  }).prototype = logging.Logger.prototype;
  dart.addTypeTests(logging.Logger);
  const name$ = Logger_name;
  const parent$ = Logger_parent;
  const children$ = Logger_children;
  dart.setMethodSignature(logging.Logger, () => ({
    __proto__: dart.getMethods(logging.Logger.__proto__),
    clearListeners: dart.fnType(dart.void, []),
    isLoggable: dart.fnType(core.bool, [logging.Level]),
    log: dart.fnType(dart.void, [logging.Level, dart.dynamic], [core.Object, core.StackTrace, async.Zone]),
    finest: dart.fnType(dart.void, [dart.dynamic], [core.Object, core.StackTrace]),
    finer: dart.fnType(dart.void, [dart.dynamic], [core.Object, core.StackTrace]),
    fine: dart.fnType(dart.void, [dart.dynamic], [core.Object, core.StackTrace]),
    config: dart.fnType(dart.void, [dart.dynamic], [core.Object, core.StackTrace]),
    info: dart.fnType(dart.void, [dart.dynamic], [core.Object, core.StackTrace]),
    warning: dart.fnType(dart.void, [dart.dynamic], [core.Object, core.StackTrace]),
    severe: dart.fnType(dart.void, [dart.dynamic], [core.Object, core.StackTrace]),
    shout: dart.fnType(dart.void, [dart.dynamic], [core.Object, core.StackTrace]),
    [_getStream]: dart.fnType(async.Stream$(logging.LogRecord), []),
    [_publish]: dart.fnType(dart.void, [logging.LogRecord])
  }));
  dart.setGetterSignature(logging.Logger, () => ({
    __proto__: dart.getGetters(logging.Logger.__proto__),
    fullName: core.String,
    level: logging.Level,
    onRecord: async.Stream$(logging.LogRecord)
  }));
  dart.setSetterSignature(logging.Logger, () => ({
    __proto__: dart.getSetters(logging.Logger.__proto__),
    level: logging.Level
  }));
  dart.setLibraryUri(logging.Logger, "package:logging/logging.dart");
  dart.setFieldSignature(logging.Logger, () => ({
    __proto__: dart.getFields(logging.Logger.__proto__),
    name: dart.finalFieldType(core.String),
    parent: dart.finalFieldType(logging.Logger),
    [_level]: dart.fieldType(logging.Level),
    [_children]: dart.finalFieldType(core.Map$(core.String, logging.Logger)),
    children: dart.finalFieldType(core.Map$(core.String, logging.Logger)),
    [_controller]: dart.fieldType(async.StreamController$(logging.LogRecord))
  }));
  dart.defineLazy(logging.Logger, {
    /*logging.Logger.root*/get root() {
      return logging.Logger.new("");
    },
    /*logging.Logger._loggers*/get _loggers() {
      return new (IdentityMapOfString$Logger()).new();
    }
  });
  const Level_name = dart.privateName(logging, "Level.name");
  const Level_value = dart.privateName(logging, "Level.value");
  let C0;
  let C1;
  let C2;
  let C3;
  let C4;
  let C5;
  let C6;
  let C7;
  let C8;
  let C9;
  let C10;
  logging.Level = class Level extends core.Object {
    get name() {
      return this[name$0];
    }
    set name(value) {
      super.name = value;
    }
    get value() {
      return this[value$];
    }
    set value(value) {
      super.value = value;
    }
    _equals(other) {
      if (other == null) return false;
      return logging.Level.is(other) && this.value == other.value;
    }
    ['<'](other) {
      return dart.notNull(this.value) < dart.notNull(other.value);
    }
    ['<='](other) {
      return dart.notNull(this.value) <= dart.notNull(other.value);
    }
    ['>'](other) {
      return dart.notNull(this.value) > dart.notNull(other.value);
    }
    ['>='](other) {
      return dart.notNull(this.value) >= dart.notNull(other.value);
    }
    compareTo(other) {
      logging.Level._check(other);
      return dart.notNull(this.value) - dart.notNull(other.value);
    }
    get hashCode() {
      return this.value;
    }
    toString() {
      return this.name;
    }
  };
  (logging.Level.new = function(name, value) {
    this[name$0] = name;
    this[value$] = value;
    ;
  }).prototype = logging.Level.prototype;
  dart.addTypeTests(logging.Level);
  const name$0 = Level_name;
  const value$ = Level_value;
  logging.Level[dart.implements] = () => [core.Comparable$(logging.Level)];
  dart.setMethodSignature(logging.Level, () => ({
    __proto__: dart.getMethods(logging.Level.__proto__),
    _equals: dart.fnType(core.bool, [core.Object]),
    [$_equals]: dart.fnType(core.bool, [core.Object]),
    '<': dart.fnType(core.bool, [logging.Level]),
    '<=': dart.fnType(core.bool, [logging.Level]),
    '>': dart.fnType(core.bool, [logging.Level]),
    '>=': dart.fnType(core.bool, [logging.Level]),
    compareTo: dart.fnType(core.int, [core.Object]),
    [$compareTo]: dart.fnType(core.int, [core.Object])
  }));
  dart.setLibraryUri(logging.Level, "package:logging/logging.dart");
  dart.setFieldSignature(logging.Level, () => ({
    __proto__: dart.getFields(logging.Level.__proto__),
    name: dart.finalFieldType(core.String),
    value: dart.finalFieldType(core.int)
  }));
  dart.defineExtensionMethods(logging.Level, ['_equals', 'compareTo', 'toString']);
  dart.defineExtensionAccessors(logging.Level, ['hashCode']);
  dart.defineLazy(logging.Level, {
    /*logging.Level.ALL*/get ALL() {
      return C0 || CT.C0;
    },
    /*logging.Level.OFF*/get OFF() {
      return C1 || CT.C1;
    },
    /*logging.Level.FINEST*/get FINEST() {
      return C2 || CT.C2;
    },
    /*logging.Level.FINER*/get FINER() {
      return C3 || CT.C3;
    },
    /*logging.Level.FINE*/get FINE() {
      return C4 || CT.C4;
    },
    /*logging.Level.CONFIG*/get CONFIG() {
      return C5 || CT.C5;
    },
    /*logging.Level.INFO*/get INFO() {
      return C6 || CT.C6;
    },
    /*logging.Level.WARNING*/get WARNING() {
      return C7 || CT.C7;
    },
    /*logging.Level.SEVERE*/get SEVERE() {
      return C8 || CT.C8;
    },
    /*logging.Level.SHOUT*/get SHOUT() {
      return C9 || CT.C9;
    },
    /*logging.Level.LEVELS*/get LEVELS() {
      return C10 || CT.C10;
    }
  });
  const LogRecord_level = dart.privateName(logging, "LogRecord.level");
  const LogRecord_message = dart.privateName(logging, "LogRecord.message");
  const LogRecord_object = dart.privateName(logging, "LogRecord.object");
  const LogRecord_loggerName = dart.privateName(logging, "LogRecord.loggerName");
  const LogRecord_time = dart.privateName(logging, "LogRecord.time");
  const LogRecord_sequenceNumber = dart.privateName(logging, "LogRecord.sequenceNumber");
  const LogRecord_error = dart.privateName(logging, "LogRecord.error");
  const LogRecord_stackTrace = dart.privateName(logging, "LogRecord.stackTrace");
  const LogRecord_zone = dart.privateName(logging, "LogRecord.zone");
  logging.LogRecord = class LogRecord extends core.Object {
    get level() {
      return this[level$];
    }
    set level(value) {
      super.level = value;
    }
    get message() {
      return this[message$];
    }
    set message(value) {
      super.message = value;
    }
    get object() {
      return this[object$];
    }
    set object(value) {
      super.object = value;
    }
    get loggerName() {
      return this[loggerName$];
    }
    set loggerName(value) {
      super.loggerName = value;
    }
    get time() {
      return this[time];
    }
    set time(value) {
      super.time = value;
    }
    get sequenceNumber() {
      return this[sequenceNumber];
    }
    set sequenceNumber(value) {
      super.sequenceNumber = value;
    }
    get error() {
      return this[error$];
    }
    set error(value) {
      super.error = value;
    }
    get stackTrace() {
      return this[stackTrace$];
    }
    set stackTrace(value) {
      super.stackTrace = value;
    }
    get zone() {
      return this[zone$];
    }
    set zone(value) {
      super.zone = value;
    }
    toString() {
      return "[" + dart.str(this.level.name) + "] " + dart.str(this.loggerName) + ": " + dart.str(this.message);
    }
  };
  (logging.LogRecord.new = function(level, message, loggerName, error, stackTrace, zone, object) {
    let t0;
    if (error === void 0) error = null;
    if (stackTrace === void 0) stackTrace = null;
    if (zone === void 0) zone = null;
    if (object === void 0) object = null;
    this[level$] = level;
    this[message$] = message;
    this[loggerName$] = loggerName;
    this[error$] = error;
    this[stackTrace$] = stackTrace;
    this[zone$] = zone;
    this[object$] = object;
    this[time] = new core.DateTime.now();
    this[sequenceNumber] = (t0 = logging.LogRecord._nextNumber, logging.LogRecord._nextNumber = dart.notNull(t0) + 1, t0);
    ;
  }).prototype = logging.LogRecord.prototype;
  dart.addTypeTests(logging.LogRecord);
  const level$ = LogRecord_level;
  const message$ = LogRecord_message;
  const object$ = LogRecord_object;
  const loggerName$ = LogRecord_loggerName;
  const time = LogRecord_time;
  const sequenceNumber = LogRecord_sequenceNumber;
  const error$ = LogRecord_error;
  const stackTrace$ = LogRecord_stackTrace;
  const zone$ = LogRecord_zone;
  dart.setLibraryUri(logging.LogRecord, "package:logging/logging.dart");
  dart.setFieldSignature(logging.LogRecord, () => ({
    __proto__: dart.getFields(logging.LogRecord.__proto__),
    level: dart.finalFieldType(logging.Level),
    message: dart.finalFieldType(core.String),
    object: dart.finalFieldType(core.Object),
    loggerName: dart.finalFieldType(core.String),
    time: dart.finalFieldType(core.DateTime),
    sequenceNumber: dart.finalFieldType(core.int),
    error: dart.finalFieldType(core.Object),
    stackTrace: dart.finalFieldType(core.StackTrace),
    zone: dart.finalFieldType(async.Zone)
  }));
  dart.defineExtensionMethods(logging.LogRecord, ['toString']);
  dart.defineLazy(logging.LogRecord, {
    /*logging.LogRecord._nextNumber*/get _nextNumber() {
      return 0;
    },
    set _nextNumber(_) {}
  });
  dart.defineLazy(logging, {
    /*logging.hierarchicalLoggingEnabled*/get hierarchicalLoggingEnabled() {
      return false;
    },
    set hierarchicalLoggingEnabled(_) {},
    /*logging.recordStackTraceAtLevel*/get recordStackTraceAtLevel() {
      return logging.Level.OFF;
    },
    set recordStackTraceAtLevel(_) {},
    /*logging._rootLevel*/get _rootLevel() {
      return logging.Level.INFO;
    },
    set _rootLevel(_) {}
  });
  dart.trackLibraries("packages/logging/logging", {
    "package:logging/logging.dart": logging
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["logging.dart"],"names":[],"mappings":"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","file":"logging.ddc.js"}');
  // Exports:
  return {
    logging: logging
  };
});

//# sourceMappingURL=logging.ddc.js.map
