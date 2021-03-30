import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class WebViewPage extends StatefulWidget {
  static String id = 'WebViewPage';
  final String site;

  WebViewPage({this.site});
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  bool loading = true;
  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final WebViewPage args = ModalRoute.of(context).settings.arguments;
    return SafeArea(
          child: WebView(
            
        initialUrl: args.site,
        onPageFinished: (finish) {
          setState(() {
            loading = false;
          });
        },
      ),
    );
  }
}
