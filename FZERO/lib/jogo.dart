import 'dart:html'; // Importa bibliotecas nativas do Dart para web (não usada diretamente neste código)

import 'package:flutter/material.dart'; // Importa o pacote Flutter para criar a interface do usuário

class JogoScreen extends StatelessWidget {
  // Lista de consoles, com URLs de imagens e datas de lançamento
  final List<Map<String, String>> consolesList = [
    {
      'console': 'Super Nintendo Entertainment System (SNES)',
      'imageUrl':
          'https://www.dropbox.com/scl/fi/8m5jqk202dtrl6wjxnxgp/SNES-Mod1-Console-Set-removebg-preview.png?rlkey=z25h3u98cu6cjyoybjp3ngeg5&st=v4in3ch1&raw=1',
      'releaseDate': '21 de novembro de 1990',
    },
    {
      'console': 'Nintendo 64',
      'imageUrl':
          'https://www.dropbox.com/scl/fi/pnsoniyqi7zm8n89zxqwa/N64-Console-Set-removebg-preview.png?rlkey=n39aqxuqrcid8mkalsmclmkvg&st=0rz965hz&raw=1',
      'releaseDate': '23 de junho de 1996',
    },
    {
      'console': 'Nintendo GameCube',
      'imageUrl':
          'https://www.dropbox.com/scl/fi/aysmke6sfj1lkumftll20/GameCube-Console-Set-removebg-preview.png?rlkey=0vh54fkgmpson8xygwe0mxmlb&st=69w828wc&raw=1',
      'releaseDate': '14 de setembro de 2001',
    },
    {
      'console': 'Game Boy Advance',
      'imageUrl':
          'https://www.dropbox.com/scl/fi/fms7ko2dxsfr7xt6duuu8/Nintendo-Game-Boy-Advance-Purple-FL-removebg-preview.png?rlkey=81lf7d8wgsg14qfl9r43tjeh5&st=iylbbgpg&raw=1',
      'releaseDate': '21 de março de 2001',
    },
    {
      'console': 'Nintendo Switch',
      'imageUrl':
          'https://www.dropbox.com/scl/fi/l9hjmechjx40qjmk478jp/61-HKEUNy-L-removebg-preview.png?rlkey=qnedv8iue9hq9xugy5sxi233a&st=a6bz5di6&raw=1 ',
      'releaseDate': '3 de março de 2017',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Estrutura básica da tela do Flutter
      appBar: AppBar(
        title: Text('Consoles e Datas de Lançamento e Relançamento'),
        backgroundColor: Color.fromARGB(255, 134, 133, 129), // Cor de fundo do AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.yellow), // Ícone de voltar
          onPressed: () {
            Navigator.pop(context); // Retorna à tela anterior
          },
        ),
      ),
      body: Container(
        // Fundo com gradiente para o corpo da tela
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2E003E), Color(0xFF8B2283)], // Cores do gradiente
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20), // Espaçamento no topo da tela
            Text(
              'Consoles Disponíveis',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white, // Cor do texto
                fontWeight: FontWeight.bold, // Negrito
              ),
            ),
            SizedBox(height: 10), // Espaçamento entre o título e a lista
            Expanded(
              // Cria uma lista de consoles
              child: ListView.builder(
                itemCount: consolesList.length, // Número de itens na lista
                itemBuilder: (context, index) {
                  // Para cada console, obtém suas informações
                  String console = consolesList[index]['console']!;
                  String imageUrl = consolesList[index]['imageUrl']!;
                  String releaseDate = consolesList[index]['releaseDate']!;

                  return Padding(
                    // Adiciona espaçamento em torno de cada item da lista
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Column(
                      children: [
                        // Nome do console
                        Text(
                          console,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white, // Cor do nome do console
                            fontWeight: FontWeight.bold, // Negrito
                          ),
                        ),
                        SizedBox(height: 10), // Espaçamento entre o nome e a imagem

                        // Imagem do console
                        Image.network(
                          imageUrl, // URL da imagem do console
                          width: 200,
                          height: 100,
                          fit: BoxFit.contain, // Ajusta a imagem para caber dentro da caixa
                        ),
                        SizedBox(height: 10), // Espaçamento entre a imagem e a data

                        // Data de lançamento do console
                        Text(
                          'Data de Lançamento: $releaseDate',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white, // Cor do texto da data
                          ),
                        ),
                        SizedBox(height: 20), // Espaçamento entre os consoles
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
