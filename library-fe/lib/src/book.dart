class Book {
  String id, title;

  Book(this.id, this.title);

  factory Book.fromText(String text) => Book(null, text);

  factory Book.fromJson(Map<String, dynamic> json) => Book(json['id'], json['title']);
  
  Map toJson() => {'id': id, 'title': title};
}

