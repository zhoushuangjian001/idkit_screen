import 'package:flutter/material.dart';
import 'package:idkit_screen/idkit_screen.dart';
import 'package:idkit_screen/lib_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("屏幕适配测试"),
        ),
        body: FPage(),
      ),
    );
  }
}

class FPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    IDKitScreen(context, layoutHeight: 667, layoutWidth: 375);
    return Container(
      child: Column(
        children: [
          Text(
            "我是一只大鲨鱼",
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          Text(
            "我是一只大鲨鱼",
            style: TextStyle(
              fontSize: 16.ssp,
            ),
          ),
          Container(
            color: Colors.red,
            width: 370.w,
            height: 100.w,
          ),
          Text("${IDKitScreen.widthRatio}"),
          Text("${IDKitScreen.width}"),
        ],
      ),
    );
  }
}

class $IDKitScreen {}
