import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/model/home_model.dart';
import 'package:learn_flutter/douban/widgets/dashed_line.dart';
import 'package:learn_flutter/douban/widgets/star_rating.dart';


class HYHomeMovieItem extends StatelessWidget {


  final MovieItem movie;

  HYHomeMovieItem(this.movie);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 8, color: Color(0xffcccccc))
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          SizedBox(height: 10,),
          buildContent(),
          buildFooter(),
        ],
      ),
    );
  }

  // 头部排名
  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(3)
      ),
      child: Text(
        'No.${movie.rank}',
        style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 131, 95, 36)
        ),
      ),
    );
  }

  // 内容布局
  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        SizedBox(width: 10,),
        buildContentInfo(),
        SizedBox(width: 10,),
        buildContentInfoLine(),
        SizedBox(width: 10,),
        buildContentInfoWish()
      ],
    );
  }
  Widget buildContentImage() {
    return ClipRRect (
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
          movie.imageURL!,
          height: 150,
      ),
    );
  }

  Widget buildContentInfo() {
    return Expanded( // 把这一列都变成可伸缩的
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildContentInfoTitle(),
            SizedBox(height: 10,),
            buildContentInfoRate(),
            buildContentInfoDesc()
          ],
      ),
    );
  }
  Widget buildContentInfoTitle() {
    // return Container(
    //   width: 290,
    //   child: Text.rich(
    //     TextSpan(
    //       children: [
    //         WidgetSpan(
    //             child: Icon(
    //               Icons.play_circle_outline,
    //               color: Colors.redAccent,
    //               size: 24,
    //             )
    //         ),
    //         TextSpan(
    //           text: '${movie.title!}',
    //           style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
    //         ),
    //         TextSpan(
    //           text: '(${movie.playDate})',
    //           style: TextStyle(fontSize: 18, color: Colors.grey),
    //         )
    //       ],
    //     ),
    //     maxLines: 2,
    //     softWrap: false,
    //     overflow: TextOverflow.ellipsis,
    //   ),
    // );
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
              child: Icon(
                Icons.play_circle_outline,
                color: Colors.redAccent,
                size: 40,
              ),
          ),
          TextSpan(
            text: '${movie.title!}',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '(${movie.playDate})',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          )
        ],
      ),
      maxLines: 2,
      softWrap: false,
      overflow: TextOverflow.ellipsis,
    );
  }


  Widget buildContentInfoRate() {
    return Row(
      children: [
        HYStarRating(rating: movie.rating!, size: 10,),
        SizedBox(width: 10,),
        Text('${movie.rating}', style: TextStyle(fontSize: 20),)
      ],
    );
  }

  Widget buildContentInfoDesc() {

    // 字符串拼接
    final genresString = movie.genres!.join(' ');
    final directorString = movie.director!.name;
    final actorString = movie.casts?.map((item) {
      return item.name;
    }).toList().join(' ');

    return Text(
      '${genresString} / ${directorString} / ${actorString}',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 16),
    );
  }

  Widget buildContentInfoLine() {
    return Container(
      height: 100,
      child: HYDashedLine(
        axis: Axis.vertical,
        dashedHeight: 6,
        dashedWidth: 0.5,
        count: 10,
        color: Colors.pink,
      ),
    );
  }

  Widget buildContentInfoWish() {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/home/wish.png', height: 40,),
          Text('想看', style: TextStyle(fontSize: 16, color: Colors.pink),)
        ],
      ),
    );
  }


  // 底部内容
  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
        color:  Color(0xffe2e2e2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(movie.originalTitle!, style: TextStyle(fontSize: 20, color: Color(0xff666666)),),
    );
  }
}
