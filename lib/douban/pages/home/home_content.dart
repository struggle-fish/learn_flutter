import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/pages/home/home_movie_item.dart';
import 'package:learn_flutter/douban/pages/main/initialize_items.dart';
import 'package:learn_flutter/service/home_request.dart';
import 'package:learn_flutter/douban/model/home_model.dart';

class HYHomeContent extends StatefulWidget {
  const HYHomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HYHomeContent> {

  final List<MovieItem> movies = [];


  @override
  void initState() {
    super.initState();
    // 网络请求
    HomeRequest.requestMoiveList(0).then((res) {
     setState(() {
       movies.addAll(res);
     });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (ctx, index) {
        return HYHomeMovieItem(movies[index]);
      }
    );
  }
}
