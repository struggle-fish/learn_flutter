import 'package:flutter/material.dart';
import '../mock/post.dart';
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow // 主题颜色
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.network(posts[index].imageUrl),
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
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Flutter'),
        elevation: 30,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}


class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '你好全世界2',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87
        ),
      ),
    );
  }
}