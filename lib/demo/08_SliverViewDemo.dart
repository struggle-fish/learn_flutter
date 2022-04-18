import 'package:flutter/material.dart';
import '../mock/post.dart';

class SliverDemo extends StatelessWidget {
  const SliverDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('你好全世界'),
            // pinned: true,
            floating: true,
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                  'Flutter'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w400
                  ),
              ),
              background: Image.network(
                  'https://club2.autoimg.cn/album/g26/M04/F4/F7/userphotos/2019/10/31/00/820_ChsEe125ttuAIZOgAAPySR4PQdo482.jpg',
                  fit: BoxFit.cover,
              ),
            ),
          ),
           SliverSafeArea(
               sliver:  SliverPadding(
                 padding: EdgeInsets.all(8),
                 sliver: SliverLivstDemo(),
                 // sliver: SliverGridDemo(),
               )
           )
        ],
      ),
    );
  }
}



class SliverLivstDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
                  return Padding(
                      padding: EdgeInsets.only(bottom: 22),
                      child: Material(
                        borderRadius: BorderRadius.circular(16),
                        elevation: 14.0,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        child: Stack(
                          children: [
                            AspectRatio(
                              aspectRatio: 16/9,
                              child: Image.network(
                                posts[index].imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     posts[index].title,
                                     style: TextStyle(
                                       fontSize: 32,
                                       color: Colors.white
                                     ),
                                   ),
                                   Text(
                                     posts[index].author,
                                     style: TextStyle(
                                         fontSize: 16,
                                         color: Colors.white
                                     ),
                                   )
                                 ],
                               )
                            )
                          ],
                        ),
                      ),
                  );
            },
            childCount: posts.length
        ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              );
            },
            childCount: posts.length
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          // childAspectRatio: 1.6
        )
    );
  }
}