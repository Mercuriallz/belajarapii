import 'package:diobelajar/ApiService.dart';
import 'package:flutter/material.dart';

class awalScreen extends StatefulWidget {
  final int id;
  final String nme;
  const awalScreen({Key key, this.id, this.nme}) : super(key: key);

  @override
  _awalScreenState createState() => _awalScreenState();
}

class _awalScreenState extends State<awalScreen> {
  Map<String, dynamic> postsid = {};

  @override
  void initState() {
    super.initState();
    print(widget.id);
    ApiService().getPostsByID(widget.id).then((value) => {
          setState(() {
            postsid = value;
          })
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [Text("gas")],
          ),
        ),
      ),
    );
  }
}
