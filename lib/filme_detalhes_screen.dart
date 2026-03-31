import 'package:flutter/material.dart';

class FilmeDetalhesScreen extends StatelessWidget {
  const FilmeDetalhesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 176, 39, 71),
        title: Text("Sobre a Obra",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Arial",
          fontWeight: FontWeight.normal,
          fontSize: 18
        ),
        ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 220,
                child: Image.network("https://wallpapers.com/images/high/michael-b-jordan-creed-movie-poster-fzfz1d4ab8onbmrb.webp",
                fit:BoxFit.cover
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Creed II",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 18,
                fontWeight: FontWeight.normal
              ),),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Creed II (2018) é uma poderosa continuação que mergulha fundo no legado e no perdão, servindo tanto como uma sequência para a jornada de Adonis Creed quanto como uma conclusão tardia para os eventos de Rocky IV.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13
                ),
                textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  minimumSize: Size(120, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: (){
                  Navigator.pop(context);
                }, 
                child: Text("Retornar"))
            ],
          ),
        ),
    );
  }
}