import 'package:http/http.dart' as http;
import 'package:untitled/model.dart';

class RemoteService {
  static var client = http.Client();

  static Future<List<Welcome>?> fetchwelcome()  async {
    var  response = await client.get('http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline' as Uri);
if( response.statusCode==200) {
  var jsonString  = response.body;
    return welcomeFromJson(jsonString);

}
else{
  /// show error msg
  return null;
}

  }

}