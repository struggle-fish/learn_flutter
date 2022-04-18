import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  const NavigatorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){},
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black
                  ),
                )
            ),
            TextButton(
                onPressed: (){
                  // 1
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) {
                  //       return PageViewRouteDemo(title: 'About');
                  //     },
                  //   )
                  // );
                  // 2
                  Navigator.pushNamed(context, '/about');
                },
                child: Text(
                    'About',
                    style: TextStyle(
                        color: Colors.black
                    ),
                )
            )
          ],
        ),
      ),
    );
  }
}


class PageViewRouteDemo extends StatelessWidget {
  final String title;

  const PageViewRouteDemo({
    this.title = '',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
