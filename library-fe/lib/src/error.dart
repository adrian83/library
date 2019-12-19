
class ConstraintViolation {
  String field, message;

  ConstraintViolation(this.field, this.message);

  factory ConstraintViolation.fromJson(Map<String, dynamic> json) => ConstraintViolation(json['field'], json['message']);

}