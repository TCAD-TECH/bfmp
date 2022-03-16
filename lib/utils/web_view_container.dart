import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final url;
  WebViewContainer(this.url);
  @override
  createState() => _WebViewContainerState(this.url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();
  bool isLoading = true;
  _WebViewContainerState(this._url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: WebView(
                    onPageFinished: (finish) {
                      setState(() {
                        isLoading = false;
                      });
                    },
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _url)),
            isLoading
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 50,
                    color: Color.fromARGB(255, 21, 25, 31),
                    child: const Center(child: CircularProgressIndicator()),
                  )
                : Column(),
          ],
        ),
      ),
    );
  }
}
