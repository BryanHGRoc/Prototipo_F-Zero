import 'package:flutter/material.dart';
// Importando as telas personalizadas
import 'jogo.dart';
import 'desenvolvedora.dart';
import 'Ajuda.dart';
import 'music.dart';
import 'Historia.dart';
import 'Personagem.dart';

void main() {
  runApp(FZeroApp()); // Inicializa o aplicativo F-ZERO
}

// Define a classe principal do aplicativo
class FZeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp define as características principais do app
    return MaterialApp(
      title: 'F-ZERO', // Título do aplicativo
      home: FZeroHomePage(), // Define a página inicial do app
    );
  }
}

// Define a tela principal (Home Page) do aplicativo
class FZeroHomePage extends StatelessWidget {
  // Função para criar os botões de ícones na barra de navegação
  Widget buildIconButton(BuildContext context, IconData icon, String route) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle, // Define o botão como circular
        gradient: RadialGradient(
          colors: [
            Colors.yellow, // Cor amarela no centro
            Color(0xffd20f98), // Cor rosa nas bordas
          ],
        ),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.black), // Ícone dentro do botão
        onPressed: () {
          // Verifica qual rota foi clicada e navega para a tela correspondente
          if (route == '/jogo') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JogoScreen()),
            );
          } else if (route == '/desenvolvedora') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DesenvolvedoraScreen()),
            );
          } else if (route == '/Ajuda') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Ajuda()),
            );
          } else if (route == '/music') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MusicScreen()),
            );
          } else if (route == '/Historia') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StoryScreen()),
            );
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold define a estrutura visual básica da tela
      body: Container(
        decoration: BoxDecoration(
          // Adiciona um fundo com gradiente
          gradient: LinearGradient(
            colors: [Color(0xFF2E003E), Color(0xFF8B2283)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 90), // Espaço no topo da tela
                  Text(
                    'F-ZERO', // Título do aplicativo
                    style: TextStyle(
                      fontSize: 60, // Tamanho do texto
                      fontWeight: FontWeight.bold, // Negrito
                      color: Colors.white, // Cor branca
                      shadows: [
                        Shadow(
                          offset: Offset(-2, -2), // Sombra no texto
                          color: Colors.black,
                        ),
                        Shadow(
                          offset: Offset(2, 2),
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20), // Espaço entre o título e a imagem
                  GestureDetector(
                    onTap: () {
                      // Ao clicar, navega para a tela de Personagem
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Personagem()),
                      );
                    },
                    child: Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a3fd0e13-1b89-4522-8a17-a45cbd2f152f/d5dd7f6-bbdb886e-ce3a-495a-9ec9-285ee54de353.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2EzZmQwZTEzLTFiODktNDUyMi04YTE3LWE0NWNiZDJmMTUyZlwvZDVkZDdmNi1iYmRiODg2ZS1jZTNhLTQ5NWEtOWVjOS0yODVlZTU0ZGUzNTMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wsLiCFZBotQ81nvOyCH2Hwmk1dss4iIcM4Ud5jyB9es',
                      height: 150, // Altura da imagem
                    ),
                  ),
                ],
              ),
            ),
            // Barra de navegação inferior com os ícones de navegação
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              color: Color.fromARGB(255, 134, 133, 129), // Cor da barra
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // Botões com ícones que navegam para diferentes páginas
                  buildIconButton(context, Icons.help, '/Ajuda'),
                  buildIconButton(context, Icons.book, '/Historia'),
                  buildIconButton(context, Icons.gamepad, '/jogo'),
                  buildIconButton(context, Icons.headset, '/music'),
                  buildIconButton(context, Icons.people, '/desenvolvedora'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
