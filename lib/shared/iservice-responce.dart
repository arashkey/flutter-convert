class IServiceResponce<T> {
  static HasNullaryAnonymousConstructor() {
    return IServiceResponce ();
  }

  IServiceResponce();

  T fromJson(Map<String, dynamic> json) {
    T item;
    return item;
  }

  List<T> fromListJson(Map<String, dynamic> json) {
    List<T> item;
    return item;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> item;
    return item;
  }
}
