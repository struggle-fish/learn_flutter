import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //     child: Text('头部'),
          //     decoration: BoxDecoration(
          //       color: Colors.grey
          //     ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text('江小鱼', style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text('xxxxx'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://club2.autoimg.cn/album/g21/M11/65/64/userphotos/2021/01/31/02/820_ChsEdmAVoXGAKWGFAB0CkquHwgg580.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage('https://club2.autoimg.cn/album/g28/M0A/F1/69/userphotos/2021/01/31/02/820_ChsEnmAVoZ2APc6WAB1NNJoI-b4178.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400]!.withOpacity(0.6),
                        BlendMode.srcOver
                    )

                )
            ),
          ),
          ListTile(
            title: Text('啊哈哈哈', textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('啊哈哈哈2', textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('啊哈哈哈3', textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}