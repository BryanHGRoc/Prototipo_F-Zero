import 'package:flutter/material.dart';

// Definindo a classe StoryScreen que extende StatelessWidget para criar uma tela estática
class StoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar com uma cor de fundo personalizada e um botão de retorno
      appBar: AppBar(
        backgroundColor:
            Color.fromARGB(255, 134, 133, 129), // Cor de fundo do AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Colors.yellow), // Ícone do botão de voltar
          onPressed: () {
            Navigator.pop(
                context); // Navega para a tela anterior ao pressionar o botão
          },
        ),
      ),
      // Corpo da tela
      body: Container(
        // Adiciona um gradiente de fundo ao container
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2E003E),
              Color(0xFF8B2283)
            ], // Cores do gradiente
            begin: Alignment.topCenter, // Início do gradiente
            end: Alignment.bottomCenter, // Fim do gradiente
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Alinha os widgets no centro da tela
            children: [
              // Ícone de livro no centro da tela
              Icon(Icons.book, size: 100, color: Colors.black),
              SizedBox(height: 20), // Espaçamento entre o ícone e o texto
              // Texto com o título da história
              Text(
                'História',
                style: TextStyle(
                  fontSize: 30, // Tamanho da fonte
                  fontWeight: FontWeight.bold, // Peso da fonte
                  color: Colors.white, // Cor da fonte
                ),
              ),
              SizedBox(
                  height:
                      20), // Espaçamento entre o título e o texto da história
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal:
                        20.0), // Espaçamento horizontal ao redor do texto
                child: Text(
                  'No ano de 2560 o grande contato com formas de vida alienígenas fez alguns magnatas criar um evento equiparável à Fórmula 1, mas em escala intergalática.', // Texto da história
                  textAlign: TextAlign.center, // Alinhamento do texto
                  style: TextStyle(
                    fontSize: 20, // Tamanho da fonte
                    fontWeight: FontWeight.bold, // Peso da fonte
                    color: Colors.yellow, // Cor da fonte
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
