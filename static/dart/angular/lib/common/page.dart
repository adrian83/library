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

class PageRequest {
  int _page;
  String _phrase;

  PageRequest(this._page, this._phrase);

  int get page => this._page;
  String get phrase => this._phrase;

  String toString() {
    return "PageRequest { page: $_page, phrase: $_phrase }";
  }
}
