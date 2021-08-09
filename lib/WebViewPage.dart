import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
class WebViewPage extends StatefulWidget {

  String? url;
  WebViewPage({Key? key, @required this.url}) : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NewsFlash"),
        leading: Container(
          // padding: EdgeInsets.all(8),
          width: 48,
          height: 48,
          decoration: BoxDecoration(

              shape: BoxShape.circle,
              color: Colors.black12,
              image: DecorationImage(
                  image: AssetImage("logo.png"),
                  fit: BoxFit.fill
              )
          ),
        ),

      ),
      body: WebView(
        initialUrl: widget.url,
      )
    );
  }
}
