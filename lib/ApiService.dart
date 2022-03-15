import 'dart:convert';
// import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class ApiService {
  var BASE_URL = "https://jsonplaceholder.typicode.com/";
  var base_url = "https://jsonplaceholder.typicode.com/";
  var url = "https://jsonplaceholder.typicode.com/";
  var URL_BASE = "https://nyoba.ddstudioid.com/";
  var URL = "https://jsonplaceholder.typicode.com/";
  var BASE = "https://latihan.ddstudioid.com/";
  var base = "https://latihan.ddstudioid.com/";
  var uri = "https://jsonplaceholder.typicode.com/";

  Future<List> getPosts() async {
    try {
      var response = await http.get(Uri.parse(base_url + "posts"));

      if (response.statusCode == 200) {
        print("Respon posts -> ${response.body}}");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      print("<-- ERROR Posts");
      throw Exception(e);
    }
  }

  Future<Map<String, dynamic>> getPostsByID(int id) async {
    try {
      var response = await http.get(Uri.parse(base_url + "posts/$id"));

      if (response.statusCode == 200) {
        print("Respon IDPosts -> ${response.body}}");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      print("<-- ERROR IDPosts");
      throw Exception(e);
    }
  }

  Future<List> getTitles() async {
    try {
      var response = await rootBundle.loadString("assets/titles.json");
      print(response);
      var dcode = jsonDecode(response);

      return dcode;
    } catch (e) {
      print("<-- ERROR comments");
      print(e);
    }
  }

  Future<List> getComments() async {
    try {
      var response = await http.get(Uri.parse(url + "comments"));

      if (response.statusCode == 200) {
        print("Respon comments -> ${response.body}}");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      print("<-- ERROR comments");
      print(e);
    }
  }

  Future<List> getPhotos() async {
    try {
      var response = await http.get(Uri.parse(URL + "photos"));

      if (response.statusCode == 200) {
        print("Respon photos -> ${response.body}}");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      print("<-- ERROR photos");
      print(e);
    }
  }

  Future<List> getAllAlbums() async {
    try {
      var response = await Dio().get(uri + "albums");

      print(response);
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Map<String, dynamic>> getCritics() async {
    try {
      var response =
          await http.get(Uri.parse(URL_BASE + "api/" + "kritiklist"));

      if (response.statusCode == 200) {
        print("Respon Kritik -> ${response.body}}");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      print("<-- ERROR Kritik");
      print(e);
    }
  }

  Future<Map<String, dynamic>> getList() async {
    print(getList);
    try {
      var response = await http.get(Uri.parse(base + "api/" + "listsiswa"));

      if (response.statusCode == 200) {
        print("Respon List -> ${response.body}}");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      print("<-- ERROR List");
      print(e);
    }
  }

  Future<Map<String, dynamic>> getSiswa() async {
    try {
      var response = await http.get(Uri.parse(BASE + "api/" + "listsiswa"));

      if (response.statusCode == 200) {
        print("Respon listsiswa -> ${response.body}}");
        var resbody = jsonDecode(response.body);
        return resbody;
      }
    } catch (e) {
      print("<-- ERROR listsiswa");
      print(e);
    }
  }

  Future<Map<String, dynamic>> getJob() async {
    try {
      var response = await rootBundle.loadString("assets/job.json");
      print(response);
      var dcode = jsonDecode(response);

      return dcode;
    } catch (e) {
      print("<-- ERROR job");
      print(e);
    }
  }

//  Contoh GET

  // Future<dynamic> login(String email, String password) async {
  //   print(email);
  //   print(password);
  //   try {
  //     Map<String, dynamic> formData = {"email": email, "password": password};

  //     var response = await http.post(
  //         Uri.parse("https://nyoba.ddstudioid.com/api/login"),
  //         body: formData);
  //     print("Respon Login -> ${response.body}");

  //     return response.body;
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future<dynamic> siswadata(String nama, String asal, String alamat,
      String umur, String username, String password) async {
    print(siswadata);
    try {
      Map<String, dynamic> formDataSiswa = {
        "nama": nama,
        "asal": asal,
        "alamat": alamat,
        "umur": umur,
        "username": username,
        "password": password,
      };
      var response = await http.post(
          Uri.parse("https://latihan.ddstudioid.com/api/daftarsiswa"),
          body: formDataSiswa);
      print("Respon DataSiswa -> ${response.body}");

      return response.body;
    } catch (e) {
      print(e);
    }
  }

  // Future<dynamic> register(
  //     String name, String email, String password, String alamat) async {
  //   try {
  //     Map<String, dynamic> formRegister = {
  //       "name": name,
  //       "email": email,
  //       "password": password,
  //       "alamat": alamat
  //     };

  //     var response = await http.post(
  //         Uri.parse("https://nyoba.ddstudioid.com/api/register"),
  //         body: formRegister);
  //     print("respon register -> ${response.body}");

  //     return response.body;
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future<dynamic> kritik(String pesan) async {
    print(kritik);
    try {
      Map<String, dynamic> formKritik = {
        "user": "dio",
        "pesan": pesan,
      };

      var response = await http.post(
          Uri.parse("https://nyoba.ddstudioid.com/api/kritik"),
          body: formKritik);
      print("respon kritik -> ${response.body}");

      return response.body;
    } catch (e) {
      print(e);
    }
  } // Contoh POST API

  // Future<dynamic> siswadelete(id) async {
  //   print(siswadelete);
  //   try {
  //     var response = await http
  //         .delete(Uri.parse("https://latihan.ddstudioid.com/api/siswa/$id"));
  //     print("respon delete siswa -> ${response.body}");

  //     return response.body;
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future<dynamic> hapusdatasiswa(id) async {
    print(hapusdatasiswa);
    try {
      var response = await http
          .delete(Uri.parse("https://latihan.ddstudioid.com/api/siswa/$id"));
      print("respon delete data -> ${response.body}");

      return response.body;
    } catch (e) {
      print(e);
    }
  } // Contoh DELETE API

} // AKHIR API SERVICE




// UDAH GALER MULU, TERUS DICIUMIN LAGI ANJG
