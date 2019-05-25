import 'package:map_to_class_sample/shared/service-response.dart';
import 'iservice-responce.dart';
import 'dart:core';

class TServiceResponse<T extends IServiceResponce> extends ServiceResponse {
  T result;

  Map<String, dynamic> json;

//
//  TServiceResponse(IServiceResponce<T> res, bool success, String msg)
//      : super(success, msg) {
//    this.result = res;
//  }

  TServiceResponse(Map<String, dynamic> json, T instance)
      : super(json["succeeded"], json["message"]) {
    this.json = json;
    this.result = instance;
  }

  TServiceResponse<T> fromJson(Map<String, dynamic> map) {
    this.result = result.fromJson(map["result"]);
    return this;
  }
}
