import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:eighty_three_task/core/data/network/network_info.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Services init
  WidgetsFlutterBinding.ensureInitialized();

  //! Features

  //Players
  _initPLayersFeature();

  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => Dio());
}

void _initPLayersFeature() {
  // Bloc

  // Use cases

  // Repository

  // Data sources
}
