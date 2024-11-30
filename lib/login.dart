import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
}