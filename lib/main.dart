// import 'dart:html';

import 'package:diobelajar/ApiService.dart';
import 'package:diobelajar/Awal.dart';
import 'package:diobelajar/myYoutube.dart';
import 'package:diobelajar/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List comments = [];
  List todos = [];
  List titles = [];
  List photos = [];
  List posts = [];
  List todosid = [];
  List albums = [];

  Map<String, dynamic> siswa = {};
  Map<String, dynamic> list = {};
  Map<String, dynamic> data = {};
  Map<String, dynamic> job = {};
  Map<String, dynamic> critics = {};
  Map<String, dynamic> delete = {};

  @override
  void initState() {
    super.initState();

    // ApiService().getAllAlbums().then((value) => {
    //       setState(() {
    //         albums = value;
    //       })
    //     });
    // ApiService().getComments().then((value) => {
    //       setState(() {
    //         comments = value;
    //       })
    //     });

    // ApiService().getTitles().then((value) => {
    //       setState(() {
    //         titles = value;
    //       })
    //     });
    // ApiService().getJob().then((value) => {
    //       setState(() {
    //         job = value;
    //       })
    //     });
    // ApiService().getCritics().then((value) => {
    //       setState(() {
    //         critics = value;
    //       })
    //     });
    // ApiService().getPhotos().then((value) => {
    //       setState(() {
    //         photos = value;
    //       })
    //     });

    // ApiService().getList().then((value) => {
    //       setState(() {
    //         list = value;
    //       })
    //     });

    // ApiService().getTodos().then((value) => {
    //       setState(() {
    //         todos = value;
    //       })
    //     });

    // ApiService().getPosts().then((value) => {
    //       setState(() {
    //         posts = value;
    //       })
    //     });
  }

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController alamatController = TextEditingController();

  TextEditingController pesanController = TextEditingController();

  TextEditingController asalController = TextEditingController();

  TextEditingController umurController = TextEditingController();

  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Form Kritik"),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // children: [ListView.builder(
          //   physics: ScrollPhysics(),
          //   shrinkWrap: true,
          //   itemCount: 20,
          //   itemBuilder: (context, i) {
          //     return InkWell(
          //       onTap: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (_) => awalScreen(id: albums[i]["id"])));
          //       },
          //       child: Column(
          //         children: [
          //           Text("${albums[i]["userId"]}"),
          //           SizedBox(
          //             height: 15,
          //           ),
          //           Text("${albums[i]["id"]}"),
          //           SizedBox(
          //             height: 15,
          //           ),
          //           Text("${albums[i]["title"]}")
          //         ],
          //       ),
          //     );
          //   },
      
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: "Input Your name...")),
            ),
            SizedBox(
              height: 25,
            ),
            // TextFormField(
            //   controller: asalController,
            //   decoration: InputDecoration(labelText: "Input Your from..."),
            // ),
            // TextFormField(
            //   controller: alamatController,
            //   decoration: InputDecoration(labelText: "Input Your address..."),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: umurController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: "Input Your Age..."),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // TextFormField(
            //   controller: usernameController,
            //   decoration: InputDecoration(labelText: "Input Your Username"),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: "Input Your Email..."),
              ),
            ),
            // TextFormField(
            //   obscureText: true,
            //   controller: passwordController,
            //   decoration: InputDecoration(labelText: "Input Your Password"),
            // ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    // todosid.add(nameController.text);
                    // todosid.add(umurController.text);
                    // todosid.add(emailController.text);
                  });
      
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => awalScreen(
            )));
                },
                child: Text("Post")),
        //     Column(
        //       children: [
        //         for (int i = 0; i < todosid.length; i++) Text(todosid[i])
        //       ],
        //     ),
        //     ListView.builder(
        //         shrinkWrap: true,
        //         itemCount: 3,
        //         itemBuilder: (context, i) {
        //           return todosid[i]
        //               ? ListTile(title: Text(todosid[i]))
        //               : Container(
        //                   height: 0,
        //                   width: 0,
        //                 );
        //         })
        //   ],
        // ), // CONTOH PARSING POST API
      
        // child: list.isEmpty || list.length == 0
        //     ? Center(
        //         child: CircularProgressIndicator(),
        //       )
        //     : Column(
        //         children: [
        //           for (int i = 0; i < list.length; i++)
        //             ListTile(
        //               title: Text("${list["data"][i]["nama"]}"),
        //               subtitle: Text("${list["data"][i]["umur"]}"),
        //               trailing: InkWell(
        //                 onTap: () {
        //                   ApiService().hapusdatasiswa(list["data"][i]["id"]);
        //                 },
        //                 child: Icon(Icons.delete),
        //               ),
        //             )
      
        // Text("${job["data"][i]["harga"]}"),
        // SizedBox(
        //   height: 15
        // ),
        // Text("${comments[i]["body"]}"),
           // CONTOH Parsing DELETE API
           ] // ),
        ),
      ));
  }
}

// volume nya gede bat ajg

// otw nonton tantan

// gue lagi diajarin tiba" galer bgst awokwowkowk + kentut

