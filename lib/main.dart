import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/repositories/barber_repository_impl.dart';
import 'data/sources/barber_remote_data_source.dart';
import 'domain/use_cases/get_barber_data.dart';
import 'presentation/controllers/barber_controller.dart';
import 'presentation/screens/barber_shop_screen.dart';

void main() {
  final remoteDataSource = BarberRemoteDataSourceImpl();
  final repository = BarberRepositoryImpl(remoteDataSource);
  final getBarberData = GetBarberData(repository);

  Get.put(BarberController(getBarberData));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Barber Shop App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BarberShopScreen(),
    );
  }
}
