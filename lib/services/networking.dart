import 'package:http/http.dart' as http;
import 'dart:convert';

const apiURL = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}

class DrinkRecipe {
  Future<dynamic> getDrinkRecipe(String drinkName) async {
    var url = '$apiURL$drinkName';
    NetworkHelper networkHelper = NetworkHelper(url);
    var drinkData = await networkHelper.getData();
    return drinkData;
  }
}
