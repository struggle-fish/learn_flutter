import 'package:flutter/material.dart';
import '../mock/post.dart';

class ViewDemo extends StatelessWidget {
  const ViewDemo({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return GridViewDemo3();
  }
}


class GridViewDemo3 extends StatelessWidget {

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(8),
        itemCount: posts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8
        ),
        itemBuilder: _itemBuilder
    );

  }
}

class GridViewDemo2 extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: Text(
          '${index}-Item',
          style: TextStyle(
              fontSize: 18,
              color: Colors.white
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 6,
      mainAxisSpacing: 6,
      children: _buildTiles(100),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: Text(
          '${index}-Item',
          style: TextStyle(
              fontSize: 18,
              color: Colors.white
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 6,
      mainAxisSpacing: 6,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class PageVideDemo2 extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {

    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 8,
            left: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  posts[index].title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                Text(
                  posts[index].author,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                )
              ],
            )
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: posts.length,
        itemBuilder: _pageItemBuilder
    );
  }
}

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
        // reverse: true,
        scrollDirection: Axis.vertical, // 修改方法
        onPageChanged: (currentIndex) => print(currentIndex),
        controller: PageController(
          initialPage: 1,// 设置默认显示哪个
          viewportFraction: 0.85
        ),
        children: [
          Container(
            color: Colors.brown,
            alignment: Alignment(0,0),
            child: Text(
              '你好全世界',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            alignment: Alignment(0,0),
            child: Text(
              '你好全世界2',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),
            ),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment(0,0),
            child: Text(
              '你好全世界3',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),
            ),
          )
        ],
    );
  }
}

