

class ValidationError {
  String field, code, message;

  ValidationError([this.field, this.code, this.message]);

	factory ValidationError.fromJson(Map<String, dynamic> json) =>
		new ValidationError(json['field'], json['code'], json['message']);
}
