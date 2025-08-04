import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'http://192.168.135.207:8888/api/v1',
    validateStatus: (status) => true,
  ),
);
