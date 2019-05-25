import 'package:flutter/material.dart';
import 'package:map_to_class_sample/models/user_address.model.dart';
import 'package:map_to_class_sample/services/user-address.service.dart';
import 'package:map_to_class_sample/shared/list-tservice-response.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Convert Map json to Object Class',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      );
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  ListTServiceResponse<UserAddressModel> _data =
      ListTServiceResponse<UserAddressModel>();

  initState() {
    super.initState();
    this.fetchData();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("succeeded: " + this._data.succeeded.toString()),
          Text("message: " + this._data.message),
          Text("data len: " + this._data.listResult.length.toString()),
        ],
      ),
      appBar: AppBar(title: Text('Convert Map json to Object Class')),
    );
  }

  void fetchData() async {
    this._data = await (new UserProfileService()).getAllAddressTitleAsync();
    setState(() async {});
  }
}
