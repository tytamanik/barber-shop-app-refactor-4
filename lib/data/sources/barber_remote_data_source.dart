import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/barber_model.dart';

abstract class BarberRemoteDataSource {
  Future<BarberModel> fetchBarberData();
}

class BarberRemoteDataSourceImpl implements BarberRemoteDataSource {
  @override
  Future<BarberModel> fetchBarberData() async {
    final response = await rootBundle.loadString('src/v2.json');
    final data = json.decode(response);
    return BarberModel.fromJson(data);
  }
}
