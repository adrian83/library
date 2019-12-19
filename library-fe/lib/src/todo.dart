class Todo {
  final int id;
  String text;

  Todo(this.id, this.text);

  factory Todo.fromText(String text) => Todo(null, text);

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(_toInt(json['id']), json['text']);
  
  Map toJson() => {'id': id, 'text': text};
}

int _toInt(id) => id is int ? id : int.parse(id);
