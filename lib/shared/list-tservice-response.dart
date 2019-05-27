import 'package:map_to_class_sample/shared/service-response.dart';
import 'iservice-responce.dart';
import 'dart:core';


class ListTServiceResponse<T extends IServiceResponce> extends ServiceResponse {
  List<T> listResult = List<T>();

  ListTServiceResponse() : super(false, "");

  fromJson(Map<String, dynamic> json, T instance) {
    this.succeeded=json['succeeded'];
    this.message=json['message'];
    listResult = _makeListResult(json, instance);
    return this;
  }

  List<T> _makeListResult(Map<String, dynamic> json, T instance) {
    json['result'].forEach((Map v) {
      listResult.add(instance.fromJson(v));
    });
    return listResult;
  }
}
