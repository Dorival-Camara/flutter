import 'package:flutter/material.dart';
import 'package:flutter_application_1/play_list_scream.dart';

class SpotifyScreem extends StatelessWidget {
  const SpotifyScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Sua Biblioteca",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Icon(Icons.search, color: Colors.white, size: 36),
          SizedBox(width: 15),
          IconButton(
            onPressed: () {
              // print("Botão Cadastrar pressionado");
              Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => Play_list_scream())
              );
            },
            icon: Icon(Icons.add, color: Colors.white, size: 36),
          ),
          SizedBox(width: 15),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              print("Perfil Clicado");
            },
            child: CircleAvatar(
              radius: 5,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 36, color: Colors.white),
            ),
          ),
        ),
      ),
      //body
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Spotify_logo_with_text.svg/960px-Spotify_logo_with_text.svg.png",
                    width: double.infinity,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),

              //Lista de Musicas
              ListTile(
                leading: Icon(Icons.music_note, color: Colors.white),
                title: Text(
                  "Samba",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Fundo de Quintal",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: Icon(Icons.music_note_rounded, color: Colors.white),
                title: Text(
                  "Pop Internacional",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Hits Pop",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: Icon(Icons.music_note_rounded, color: Colors.white),
                title: Text(
                  "Sertanejo Universitário",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Henrique e Juliano, Jorge e mateus, Marília Mendonça ",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: Icon(Icons.music_note_rounded, color: Colors.white),
                title: Text(
                  "HipHop internacional",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  "Vários artistas",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              SizedBox(height: 10),
              //Lista de Albuns com Scroll
              Text(
                "Albuns Nacionais",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 120,
                      height: 120,
                      child: Image.network(
                        "https://i.scdn.co/image/ab67616d0000b2730d02093a44e1fbb3a6e5cb26",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 120,
                      height: 120,
                      child: Image.network(
                        "https://i.scdn.co/image/ab67616d0000b2735de256a1d975c8e275663546",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 120,
                      height: 120,
                      child: Image.network(
                        "https://i.scdn.co/image/ab67616d0000b27306a2e8014cec5dca76d8261b",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              //Lista de Albuns com Scroll
              Text(
                "Albuns Internacionais",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 120,
                      height: 120,
                      child: Image.network(
                        "https://portalpopline.com.br/wp-content/uploads/2025/04/albuns-artistas-pop-2025.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 120,
                      height: 120,
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrBLPfMrHamMoI8G5klGaBKAbHJpD439hNIw&s",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 120,
                      height: 120,
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsHO5TiAHo5fD-kzMqKF0Xs5NF6PBuyZ5Gbw&s",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              //Lista de Albuns com Scroll
              Text(
                "Albuns Internacionais",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 120,
                      height: 120,
                      child: Image.network(
                        "https://cdn-images.dzcdn.net/images/cover/a7a16b8f63b1ec0e9fbd327619966737/0x1900-000000-80-0-0.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 120,
                      height: 120,
                      child: Image.network(
                        "https://akamai.sscdn.co/letras/360x360/albuns/0/2/6/9/2495961736155565.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      width: 120,
                      height: 120,
                      child: Image.network(
                        "https://i1.sndcdn.com/artworks-zGYQaoOpbhDkfr2z-cemWbw-t500x500.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

      
      //menu barra de navegação
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Sua Biblioteca",
          ),
        ],
      ),
    );
  }
}
