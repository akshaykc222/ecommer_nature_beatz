import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop_app/data/data_source/endpoints.dart';
import 'package:shop_app/data/models/register_model.dart';

import '../exceotion.dart';

abstract class RemoteDataSource {
  Future<RegisterModel> register(RegisterModel model);
}

class RemoteDataSourceImpl implements RemoteDataSource, ApiEndPoints {
  final http.Client client;
  RemoteDataSourceImpl({required this.client});

  @override
  Future<RegisterModel> register(RegisterModel model) async {
    final response = await client.get(Uri.parse(ApiEndPoints.registerApi));

    if (response.statusCode == 201) {
      return RegisterModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
