import './serializable.dart';

class ValidationError extends Serializable {
  String field, code, message;

  ValidationError([this.field, this.code, this.message]);

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      new ValidationError(json['field'], json['code'], json['message']);

  String toString() {
    return "ValidationError { field=$field, code=$code, message=$message }";
  }
}

class ValidationErrors extends Serializable implements Exception {
  List<ValidationError> validationErrors;

  ValidationErrors(List errors) {
    this.validationErrors = new List<ValidationError>();
    errors.forEach(
        (e) => this.validationErrors.add(new ValidationError.fromJson(e)));
  }

  factory ValidationErrors.fromJson(Map<String, dynamic> json) =>
      new ValidationErrors(json['validationErrors']);

  String toString() {
    var s = validationErrors != null ? validationErrors.join(",") : "";
    return "ValidationErrors { validationErrors=[$s] }";
  }
}