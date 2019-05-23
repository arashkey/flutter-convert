import 'dart:collection';
import 'dart:core';

import 'iservice-responce.dart';

class JsonList<E extends IServiceResponce> extends ListBase<E> implements IServiceResponce<E> {
  List innerList = new List();

  int get length => innerList.length;

  set length(int length) {
    innerList.length = length;
  }

  void operator []=(int index, E value) {
    innerList[index] = value;
  }

  E operator [](int index) => innerList[index];

  // Though not strictly necessary, for performance reasons
  // you should implement add and addAll.

  void add(E value) => innerList.add(value);

  void addAll(Iterable<E> all) => innerList.addAll(all);

  @override
  E fromJson(Map<String, dynamic> json) {
    return null;
  }

  @override
  List<E> fromListJson(Map<String, dynamic> json) {
    List<E> output=new List<E>();
    E item ;
    for (int i = 0; i < json["responce"].length; i++) {
      output.add(item.fromJson(json["responce"][i]));
    }

    return output;
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> result = new Map<String, dynamic>();
    for (int i = 0; i < innerList.length; i++) {
      result.addAll(innerList[i].toJson());
    }
    return result;
  }
}
