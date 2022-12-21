import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjectableModule{
  @LazySingleton()
  Dio get dio => Dio();
}