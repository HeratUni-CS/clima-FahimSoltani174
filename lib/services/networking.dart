import 'dart:convert';
import 'package:http/http.dart' as http;


// Getting the data from api in json format and change it to our format
class NetworkHelper {
  String? url;
  NetworkHelper(this.url);

  Future getData() async {
    Uri uri = Uri.parse(url as String);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
