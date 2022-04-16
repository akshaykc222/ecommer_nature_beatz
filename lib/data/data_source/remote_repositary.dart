import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop_app/data/models/register_model.dart';

import '../exceotion.dart';

abstract class RemoteDataSource {
  Future<RegisterModel> register(RegisterModel model);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client client;
  RemoteDataSourceImpl({required this.client});

  @override
  Future<RegisterModel> register(RegisterModel model) async {
    final response =
        await client.get(Uri.parse(Urls.currentWeatherByName(cityName)));

    if (response.statusCode == 200) {
      return RegisterModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
