import 'package:flutter/material.dart';
// import 'package:url_launcher/link.dart';
//
// import 'package:url_launcher/url_launcher.dart';

// TODO:
main() {
  runApp(WidgetLaunchDemoApp());
}

class WidgetLaunchDemoApp extends StatefulWidget {
  const WidgetLaunchDemoApp({Key? key}) : super(key: key);

  @override
  State<WidgetLaunchDemoApp> createState() => _WidgetLayoutAppState();
}

class _WidgetLayoutAppState extends State<WidgetLaunchDemoApp> {

  final Uri toLaunch =
  Uri(scheme: 'https', host: 'www.cylog.org', path: 'headers/');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '手势',
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('打开第三方123'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context); // 返回到上一页
            },
            child: Icon(Icons.back_hand),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () => _launchUrl(toLaunch),
                  child: Text('打开H5')
              ),
              // Link(
              //   uri: Uri.parse(
              //       'https://www.baidu.com'),
              //   target: LinkTarget.blank,
              //   builder: (BuildContext ctx, FollowLink? openLink) {
              //     return TextButton.icon(
              //       onPressed: openLink,
              //       label: const Text('打开百度--没生效'),
              //       icon: const Icon(Icons.read_more),
              //     );
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {

    // final Uri url = Uri.parse('http://www.devio.org/');

    // if (!await launchUrl(
    //   url,
    //   mode: LaunchMode.inAppWebView,
    //   webViewConfiguration: const WebViewConfiguration(enableJavaScript: false),
    // )) {
    //   throw Exception('Could not launch $url');
    // }
  }
}