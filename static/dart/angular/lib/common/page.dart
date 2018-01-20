import 'dart:convert';

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
  int _page = 0;
  int _size = 5;
  String _phrase = "";
  String _sort = "";

  PageRequest(this._page, this._phrase, [this._size, this._sort]);

  int get page => this._page == null ? 0 : this._page;
  int get size => this._size == null ? 0 : this._size;
  String get phrase => this._phrase == null ? "" : this._phrase;
  String get sort => this._sort == null ? "" : this._sort;

  String params(){
    return "page=${page}&phrase=${Uri.encodeFull(phrase)}&size=$size&sort=$sort";
  }

  String toString() {
    return "PageRequest { page: $_page, phrase: $_phrase, size: $_size, sort: $_sort }";
  }
}
