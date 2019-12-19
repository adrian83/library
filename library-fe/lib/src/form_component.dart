import 'dart:convert';
import 'dart:async';

import 'package:angular_router/angular_router.dart';
import 'package:http/http.dart';

import 'error.dart';
import 'user.dart';
import 'route_paths.dart';

class FormComponent {

  Router _router;

  FormComponent(this._router);

  List<ConstraintViolation> _violations = [];
  String _errorMsg;
  String _infoMsg;



  void handleErrors(Future<Response> future, Function onSuccess) {
      future
      .then((response){
        if(response.statusCode == 200 || response.statusCode == 201){
          onSuccess(response);
        } else if(response.statusCode == 400) {
          Iterable l = json.decode(response.body);
          violations = l.map((j)=> ConstraintViolation.fromJson(j)).toList();
        } else {
          errorMsg = response.body != null ? response.body : "unknown error";
        }
      }).catchError((e){
        if(e is UnauthorizedException){
          _router.navigate(RoutePaths.login.toUrl());
        }
        print("exception $e");
      });
  }

  String get infoMsg => _infoMsg;

  void set infoMsg(String msg) {
    _infoMsg = msg;
  }

  Function get hideInfo => () => _infoMsg = "";


  String get errorMsg => _errorMsg;

  void set errorMsg(String msg) {
    _errorMsg = msg;
  }

  Function get hideError => () => _errorMsg = "";


  List<ConstraintViolation> get violations => _violations;

  void set violations(List<ConstraintViolation>  vs) {
    _violations = vs;
  }

  Function get hideConstraintViolation => () => _violations = [];

}