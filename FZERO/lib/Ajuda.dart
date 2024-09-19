import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 134, 133, 129), // Cor do AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.yellow), // Ícone de voltar
          onPressed: () {
            Navigator.pop(context); // Retorna à tela anterior
          },
        ),
      ),
      body: Container(
        // Fundo com gradiente
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2E003E),
              Color(0xFF8B2283)
            ], // Cores do gradiente
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          // Centraliza os elementos na tela
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Alinhamento vertical ao centro
            children: [
              Icon(
                Icons.help_outline, // Ícone de ajuda
                size: 100, // Tamanho do ícone
                color: Colors.black, // Cor do ícone
              ),
              SizedBox(height: 20), // Espaçamento entre o ícone e o texto
              Text(
                'Dicas',
                style: TextStyle(
                  fontSize: 30, // Tamanho da fonte
                  fontWeight: FontWeight.bold, // Texto em negrito
                  color: Colors.white, // Cor do texto
                ),
              ),
              SizedBox(
                  height: 20), // Espaçamento entre o título e o texto de dicas
              Text(
                'Tenha atenção à pista\nEvite os obstáculos', // Texto das dicas
                textAlign: TextAlign.center, // Alinhamento do texto ao centro
                style: TextStyle(
                  fontSize: 20, // Tamanho da fonte do texto
                  color: Colors.yellow, // Cor do texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
