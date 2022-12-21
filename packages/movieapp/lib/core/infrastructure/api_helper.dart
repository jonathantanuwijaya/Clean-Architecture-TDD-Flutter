import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:movieapp/core/domain/app_exception.dart';
import 'package:movieapp/core/domain/base_entity.dart';
import 'package:movieapp/core/domain/exception.dart';

@singleton
class ApiHelper {
  final Dio _dio;

  ApiHelper(this._dio);

  Future<BaseEntity> get({required String path, String? queryParams}) async {
    try {
      String queries = queryParams ?? 'iron man';
      String formattedQuery = queries.replaceAll(' ', '+');
      String urlPath = path + '?term=$formattedQuery&entity=movie';
      debugPrint(urlPath);
      final Response response = await _dio.get(urlPath);
      // debugPrint('RESPONSE == ${response.data}');
      // debugPrint('RESPONSE STCODE == ${response.statusCode}');
      return _handleApiResponse(response);
    } on AppException catch(e){
      debugPrint('Hi this App Exception = $e');
      rethrow;
    } on DioError catch (e) {
      debugPrint('Hi this Dio Error = $e');
      return _handleDioErrorResponse(e);
    }
  }

  BaseEntity _handleApiResponse(Response response) {
    final BaseEntity responseDto = BaseEntity.fromJson(jsonDecode(response.data));
    final isResponseSuccess = response.statusCode == 200;

    if (isResponseSuccess) {
      debugPrint(responseDto.toString());
      return responseDto;
    } else {
      final exception = BaseEntityException(
          stackTrace: StackTrace.current, response: response);
      throw exception;
    }
  }

  BaseEntity _handleDioErrorResponse(DioError error) {

    switch (error.type) {
      case DioErrorType.response:
        if (error.response?.statusCode == 401 ||
            error.response?.statusCode == 403) {
          throw Exception('UnAuthorized');
        } else {
          return _handleApiResponse(error.response!);
        }
      default:
        throw Exception(error.message);
    }
  }
}
