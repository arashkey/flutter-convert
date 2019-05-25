import 'package:map_to_class_sample/models/user_address.model.dart';
import 'package:map_to_class_sample/shared/list-tservice-response.dart';

class UserProfileService {
  String baseUrl;

  UserProfileService() {
    this.baseUrl = '/api/user-profile';
  }

  Future<ListTServiceResponse<UserAddressModel>>
      getAllAddressTitleAsync() async {
    String url = this.baseUrl + '/address-title';
    //get data from server like this
    Map<String, dynamic> responseBody = {
      "result": [
        {
          "id": 1,
          "title": "location 1",
          "address": "Location 1-Tehran-Iran",
          "lat": 35.69899313097492,
          "long": 51.403602122887975
        },
        {
          "id": 2,
          "title": "location 2",
          "address": "Location 2-Tehran-Iran",
          "lat": 35.70003866264581,
          "long": 51.405491822958
        }
      ],
      "succeeded": true,
      "message": ""
    };
    var result = ListTServiceResponse<UserAddressModel>()
        .fromJson(responseBody, UserAddressModel());
    print(result);
    return result;
  }
}
