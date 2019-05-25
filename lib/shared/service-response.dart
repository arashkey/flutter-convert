import 'package:json_annotation/json_annotation.dart';

part 'service-response.g.dart';

@JsonSerializable(nullable: false)
class ServiceResponse {
  bool succeeded = false;

  String message = "";

  ServiceResponse(bool succeeded, String message) {
    this.message = message;
    this.succeeded = succeeded;
  }

  static ServiceResponse getFromMap(Map responseBody) {
    if (responseBody == null) return null;
    ServiceResponse result =
        ServiceResponse(responseBody['succeeded'], responseBody['message']);
    return result;
  }

  factory ServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceResponseToJson(this);

  @override
  String toString() {
    return "succeeded: $succeeded, message: $message";
  }
}
