import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/detailsModel.dart';

class DetailsHelper {
  Future<DetailsModel?> getData() async {
    var client = http.Client();
    var response = await client
        .get(Uri.parse('http://api.emearn365.com/api/category/alone/status'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      return DetailsModel.fromJson(data);
    } else {
      return null;
    }
  }
}
