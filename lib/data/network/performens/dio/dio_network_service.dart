import 'package:dio/dio.dart';

/// Implementation of network services based on DIO
class DIONetworkService {
  final dio = Dio();

  ///The constructor to which the base URL is passed
  DIONetworkService() : super() {
    _setup();
  }

  /// DIO setup
  _setup() {
    Interceptors interceptors = dio.interceptors;

    interceptors.requestLock.lock();
    interceptors.clear();
    interceptors.add(InterceptorsWrapper(onRequest: (Options options) async {
      return options;
    }, onError: (DioError e) {
      if (e.response == null) {
        return DioError(
            error: "No internet connection available.",
            response: Response(statusCode: 400));
      }
      if (e.message.contains("SocketException:")) {
        e = DioError(
            error: "No internet connection available.",
            response: Response(statusCode: 400));
      }
      return e;
    }));
    interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
    interceptors.requestLock.unlock();
  }
}
