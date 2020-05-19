import 'package:dio/dio.dart';

/// An interceptor that is responsible for handling errors
class ErrorInterceptor extends InterceptorsWrapper {

  @override
  Future onResponse(Response response) {
    return super.onResponse(response);
  }

}
