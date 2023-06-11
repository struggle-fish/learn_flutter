import 'package:learn_flutter/douban/model/home_model.dart';

import 'http_request.dart';
import 'config.dart';



class HomeRequest {
  static Future<List<MovieItem>> requestMoiveList(int start) async {
    //  1、构建请求
    final movieURL = '/movie/new_movies?apikey=0df993c66c0c636e29ecbb5344252a4a';

    // 2、发送网络请求获取结果
    final result = await HttpRequest.request(movieURL);
    final subjects = result['subjects'];


    // 3、将 map 转成 model
    List<MovieItem> movies = [];
    for (var sub in subjects) {
      movies.add(MovieItem.fromMap(sub));
    }

    return movies;
  }
}
