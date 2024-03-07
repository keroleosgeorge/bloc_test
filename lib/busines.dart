import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';

class BusinisScreen extends StatefulWidget {
  const BusinisScreen({super.key});

  @override
  State<BusinisScreen> createState() => _BusinisScreenState();
}

class _BusinisScreenState extends State<BusinisScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () async{
await LaunchApp.openApp(
  androidPackageName:"http://localhost:42993/",
  openStore: false
);
        },
        child: Text("Businis",style: TextStyle
          (fontSize: 20.0,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
