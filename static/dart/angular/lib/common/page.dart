
class Page<T> {

  int total;
  int size;
  int current;
  List<T> elements;

  Page(this.current, this.total, this.size, this.elements);

  List<T> get getElements => this.elements;
  int get getSize => this.size;
  int get getTotal => this.total;
  int get getCurrent => this.current;

  String toString() {
    return "Page { current: $current, total: $total, size: $size, elements: $elements }";
  }

}
