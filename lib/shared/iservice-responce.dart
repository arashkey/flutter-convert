class IServiceResponce<T> {


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
