import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview/webview_container.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding:  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                            backgroundColor: Colors.blue,
                            textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                          ),
                          child: Text('Open Link Button'),
                          onPressed: () => _handleURLButtonPress(context),
                        ))
                  ],
                ))));
  }

  void _handleURLButtonPress(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer()));
  }
}