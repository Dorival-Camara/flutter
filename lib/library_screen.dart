import 'package:flutter/material.dart';
import 'filme_detalhes_screen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 176, 39, 71),
        title: Text(
          "PIRATARIA PLUS",
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
        actions: [
          Icon(Icons.menu, color: const Color.fromARGB(255, 0, 0, 0)),
          SizedBox(width: 15),
          IconButton(
            onPressed: () {
              print("Botao Pressionado");
            },
            icon: Icon(Icons.settings, color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Destaque do mês",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 700,
              child: Image.network(
                "https://wallpapers.com/images/high/michael-b-jordan-in-creed-2-nc2uwlqiy9i6x6t3.webp",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.black,
                elevation: 5,
                minimumSize: Size(150, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FilmeDetalhesScreen(),
                  ),
                );
              },
              child: Text("Ver agora"),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Populares",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/high/kung-fu-panda-2-dreamworks-x5ipnmgs4rxc1jop.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/high/descendants-3-disney-poster-dz4l5urd0j9vz9mo.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/high/disney-film-tangled-vibrant-poster-k4zkrlvwgm6io0jm.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/hd/toy-story-4-pictures-4b8hymkgkkcxohv4.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Lançamentos",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/hd/star-wars-title-logo-3mx1btzmob79u7eo.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/high/zootopia-golden-yellow-design-poster-ze2ovstc9j90pwao.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/high/puss-in-boots-from-shrek-m8mu5wf0gcsqkalq.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/high/madagascar-penguins-with-animals-82lm6yeenxm2ecv6.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Recomendados",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/hd/harry-potter-dobby-close-up-0gcmakbocqf6bjqd.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/high/creed-3-b1g6wfay56b1i1l3.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "http://wallpapers.com/images/hd/interstellar-spinning-black-hole-bxts4obh7jic9ama.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: 100,
                    height: 150,
                    child: Image.network(
                      "https://wallpapers.com/images/hd/lion-king-gang-hd-3vfja4r8bdxr0rrm.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
