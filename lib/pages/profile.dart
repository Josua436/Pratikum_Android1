import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Potret kotak dengan garis tepi dan ukuran diperbesar
              Container(
                width: 120, // Lebar diperbesar
                height: 180, // Tinggi diperbesar
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://cdn.7tv.app/emote/01F6ME7ADR0000WDA7ERT9H30R/4x.webp'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8), // Sudut sedikit melengkung
                  border: Border.all(
                    color: Colors.blue, // Warna garis tepi
                    width: 3, // Ketebalan garis
                  ),
                ),
              ),
              SizedBox(height: 20), // Jarak antara potret dan teks
              // Informasi profil
              Text(
                'NPM: 2210010436',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Nama: Josua Valentino B',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kelas: 5N',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
