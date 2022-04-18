import 'package:flutter/material.dart';
import '../mock/post.dart';
import 'ListViewDetail.dart';


class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8),
      child: Stack(
        children: [
          Column(
            children: [
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
              ),
              SizedBox(height: 16,),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: 16,),
            ],
          ),
          Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white.withOpacity(0.3),
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: () {
                    print('点击当前');
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PostShow(post: posts[index]))
                    );
                  },
                ),
              )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
