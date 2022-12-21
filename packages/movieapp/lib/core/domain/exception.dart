import 'package:dio/dio.dart';

import 'package:movieapp/core/domain/app_exception.dart';

import 'base_entity.dart';

class ApiException extends AppException {
  final StackTrace stackTrace;
  final Response response;

  ApiException(this.stackTrace, this.response);
  
  String get error {
    return '''Api Exception :

Code :${response.statusCode}
Message :${response.statusMessage}
Data :${response.data}
-----------------------------------
''';
  }
}

class BaseEntityException extends ApiException {
  final StackTrace stackTrace;
  final Response response;

  BaseEntityException({
    required this.stackTrace,
    required this.response,
  }) : super(stackTrace, response);
   BaseEntity get baseEntity => BaseEntity.fromJson(response.data);

}
