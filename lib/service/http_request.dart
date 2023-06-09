import 'package:dio/dio.dart';
import 'config.dart';

class HttpRequest {

  static final BaseOptions baseOptions = BaseOptions(
    baseUrl: HttpConfig.baseURL,
    connectTimeout: HttpConfig.timeout,
  );


  static final Dio dio = Dio(baseOptions);

  static Future request<T>(
      String url,
      {
        String method = 'get',
        Map<String, dynamic>? params,
        Interceptor? inter
      })
  async {
    // 创建单独配置
    final option = Options(method: method);

    // 全局拦截器
    Interceptor dIter = InterceptorsWrapper(
      onRequest: (options, handler) {
        print('报告老王，小王看上了新的网红：' + options.path);
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print('报告老王，小王收到了新网红的回复：${response}');
        handler.next(response);
      },
      onError: (DioException e, handler) {
        print('报告老王，小王被网红喷啦！${e}');
        return handler.next(e);
      }
    );

    List<Interceptor> inters = [dIter];
    if (inter != null) {
      inters.add(inter);
    }
    // 添加拦截器
    dio.interceptors.addAll(inters);

    try {
      // 发起请求
      Response response = await dio.request(url, queryParameters: params, options: option);
      return response.data;
    } on DioException catch(e) {
      return Future.error(e);
    }
  }

  


  static void get() {}

  static void post() {}
}
