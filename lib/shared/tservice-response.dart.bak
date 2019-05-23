
import 'package:map_to_class_sample/shared/service-response.dart';
import 'iservice-responce.dart';
import 'dart:core';

import 'json-list.dart';

class TServiceResponse<T extends IServiceResponce> extends ServiceResponse {
  T result;
  Map<String, dynamic> json;
  List listResult;

//
//  TServiceResponse(IServiceResponce<T> res, bool success, String msg)
//      : super(success, msg) {
//    this.result = res;
//  }

  TServiceResponse( {this.json, this.result})
      : super(json["succeeded"], json["message"]) {}

  T fromJson(Map<String, dynamic> map) {
    this.result = result.fromJson(map["result"]);
    if (this.result == null) {
      this.listResult = result.fromListJson(map["result"]);
    }
    return this.listResult;
  }

  Map<String, dynamic> toJson() => result.toJson();
}
