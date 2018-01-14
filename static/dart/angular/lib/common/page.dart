
class Page<T> {

  int total;
  int size;
  List<T> elements;

  Page(this.total, this.size, this.elements);

  List<T> get getElements => this.elements;
  int get getSize => this.size;
  int get getTotal => this.total;

  String toString() {
    return "Page { total: $total, size: $size, elements: $elements }";
  }

}
