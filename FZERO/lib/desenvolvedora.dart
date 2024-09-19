import 'package:flutter/material.dart';

class DesenvolvedoraScreen extends StatelessWidget {
  const DesenvolvedoraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar com cor de fundo cinza e título personalizado
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Informações da Desenvolvedora', // Título da AppBar
          style: TextStyle(color: Colors.yellow), // Cor do texto da AppBar
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.yellow), // Ícone de voltar
          onPressed: () {
            Navigator.pop(context); // Volta para a tela anterior
          },
        ),
      ),
      body: Container(
        // Fundo com gradiente vertical
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2E003E), Color(0xFF8B2283)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centraliza os itens verticalmente
            children: <Widget>[
              // Avatar circular com um ícone representando a empresa
              CircleAvatar(
                radius: 50, // Tamanho do avatar
                backgroundColor: Colors.transparent, // Fundo transparente
                child: Icon(Icons.business,
                    size: 80, color: Colors.yellow), // Ícone da empresa
              ),
              SizedBox(height: 30), // Espaço entre o avatar e o próximo item

              // Título "Desenvolvedora"
              Text(
                'Desenvolvedora',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 28,
                  fontWeight: FontWeight.bold, // Título em negrito
                ),
              ),

              SizedBox(
                  height: 20), // Espaço entre o título e o texto informativo

              // Texto explicativo sobre a empresa
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0), // Espaçamento lateral
                child: Text(
                  'Empresa: F-Zero é uma série de jogos eletrônicos de corrida futurísticos originalmente criada pela Nintendo Entertainment Analysis & Development e mais tarde desenvolvida por diversas outras companhias e publicada pela Nintendo.',
                  style: TextStyle(
                    color: Colors.yellow, // Cor do texto
                    fontSize: 18, // Tamanho da fonte
                  ),
                  textAlign: TextAlign.center, // Centraliza o texto
                ),
              ),

              SizedBox(height: 20), // Espaço entre o texto da empresa e a data

              // Texto que exibe a data de criação da série
              Text(
                'Data de criação: 21/09/1990',
                style: TextStyle(
                  color: Colors.yellow, // Cor do texto
                  fontSize: 18,
                  height:
                      1.5, // Altura da linha, melhora o espaçamento vertical do texto
                ),
                textAlign: TextAlign.center, // Centraliza o texto
              ),
            ],
          ),
        ),
      ),
    );
  }
}
