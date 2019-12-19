class User {
  final int id;
  String email, passwordHash;

  User(this.id, this.email, this.passwordHash);

  factory User.fromJson(Map<String, dynamic> json) =>
      User(_toInt(json['id']), json['email'], json['passwordHash']);

  Map toJson() => {'id': id, 'email': email, 'passwordHash': passwordHash};
}

class Register {
  String email, password, repeatedPassword;

    Register(this.email, this.password, this.repeatedPassword);

  Map toJson() => {'email': email, 'password': password, 'repeatedPassword': repeatedPassword};
}

class Login {
  String email, password;

    Login(this.email, this.password);

  Map toJson() => {'email': email, 'password': password};
}

int _toInt(id) => id is int ? id : int.parse(id);

class UnauthorizedException implements Exception {
  String cause;
  UnauthorizedException(this.cause);
}