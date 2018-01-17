
class Page<T> {

  int _total;
  int _size;
  int _current;
  List<T> _elements;

  Page(this._current, this._total, this._size, this._elements);

  List<T> get elements => this._elements;
  int get size => this._size;
  int get total => this._total;
  int get current => this._current;

  String toString() {
    return "Page { current: $_current, total: $_total, size: $_size, elements: $_elements }";
  }

}
