import 'package:dio/dio.dart';
import 'package:firebase_movies_app/core/services/dot_env_service.dart';
import 'package:firebase_movies_app/data/repositories/api_repository/dio/dio_repository.dart';
import 'package:firebase_movies_app/data/repositories/api_repository/i_api_repository.dart';
import 'package:provider/provider.dart';

final makeApiRepository = Provider<IApiRepository>(
  create: (_) => DioRepositoryImpl(
    Dio(
      BaseOptions(
        baseUrl: DotEnvService.getApiBaseurl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    ),
    ),
);
