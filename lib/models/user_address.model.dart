import 'package:map_to_class_sample/shared/iservice-responce.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_address.model.g.dart';

@JsonSerializable(nullable: false)
class UserAddressModel implements IServiceResponce<UserAddressModel> {
  int id;
  String title;
  String address;
  double lat;
  double long;

  UserAddressModel({this.id, this.title, this.address, this.lat, this.long});

  UserAddressModel fromJson(Map<String, dynamic> json) =>
      _$UserAddressModelFromJson(json);

  Map<String, dynamic> toJson() {
    return _$UserAddressModelToJson(this);
  }

  @override
  List<UserAddressModel> fromListJson(Map<String, dynamic> json) {
    return null;
  }
}
