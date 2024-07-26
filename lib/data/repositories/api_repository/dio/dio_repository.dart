import 'package:dio/dio.dart';
import 'package:firebase_movies_app/core/const/errors_const.dart';
import 'package:firebase_movies_app/core/services/dot_env_service.dart';
import 'package:firebase_movies_app/data/models/api_response_model.dart';
import '../i_api_repository.dart';

class DioRepositoryImpl implements IApiRepository {
  final Dio _dio;

  DioRepositoryImpl(this._dio);

  @override
  Future<(String?, ApiResponseModel<T>?)> get<T>(String url) async {
    try {
      final response = await _dio.get(url,
          options: Options(headers: {
            "Authorization": "Bearer ${DotEnvService.getApiToken}"
          }));

      return (
        null,
        ApiResponseModel<T>(
            data: response.data, statusMessage: response.statusMessage)
      );
    } on DioException catch (dioException) {
      final errorMessage =
          dioException.message ?? ErrorsConst.API_DEFAULT_ERROR;
      return (errorMessage, null);
    }
  }
}
