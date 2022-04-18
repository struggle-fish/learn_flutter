import 'package:flutter/material.dart';
import '../mock/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  const PostShow({
    required this.post,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        elevation: 0,
      ),
      body: ListView(
          children: [
            Image.network(post.imageUrl),
            Container(
                padding: EdgeInsets.all(32),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${post.title}', style: Theme.of(context).textTheme.titleLarge,),
                    Text('${post.author}', style: Theme.of(context).textTheme.titleLarge,),
                    SizedBox(height: 32),
                    Text('${post.description}', style: Theme.of(context).textTheme.bodyMedium,)
                  ],
                )
            )
          ]
      ),
    );
  }
}
