// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/service.dart';
import 'package:flutter_application_1/dashboard.dart';

import 'package:get/get.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formState = GlobalKey<FormState>();
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();

  Future _masuk() async {
    var response = await DataService().LoginService(_user.text, _pass.text);
    if (response == true) {
      Get.offAll(Dashboard());
    } else {
      Get.defaultDialog(
        title: 'User/pass Salah',
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aplikasi',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black, Colors.blueGrey]),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            print('ini adalah tombol menu');
          },
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('ini setting');
            },
            icon: Icon(Icons.settings),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              print('ini tombol cari');
            },
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://cdn.7tv.app/emote/01JE9H01YX5NV6SMTQR64CP8MB/4x.webp'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == ''){
                  return "username tdk boleh kosong";
                }
                return null;
              },
              controller: _user,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value == ''){
                  return "password tdk boleh kosong";
                }
                return null;
              },
              controller: _pass,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.password)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formState.currentState!.validate()) {
                    _masuk();
                  }
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    backgroundColor: Colors.black,
                    shadowColor: Colors.blueGrey,
                    elevation: 10),
                child: Text(
                  'MASUK',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chiil Guys Community',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.grey, Colors.black])),
        ),
        leading: IconButton(
          onPressed: () {
            Get.offAll(Dashboard());
          },
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('ini setting');
            },
            icon: Icon(Icons.settings),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              print('ini pencarian');
            },
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
        // backgroundColor: Colors.blueAccent,
      ),

      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://cdn.7tv.app/emote/01JD7XD15VC0B2SH7C5W84BAB5/4x.webp'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0)),
              labelText: 'Username',
              prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0)),
              labelText: 'Password',
              prefixIcon: Icon(Icons.password)),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              print('ini tombol masuk');
            }, 
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
              backgroundColor: Colors.black54,
              foregroundColor: Colors.black87,
              shadowColor: Colors.black,
              elevation: 10,
            ),
            child: Text(
              'MASUK',
              style: TextStyle(color: Colors.white70),
            ),
            ),
        ],
      ),
      ),
    );
}