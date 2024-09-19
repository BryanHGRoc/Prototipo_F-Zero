import 'package:flutter/material.dart';

class Personagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personagens'),
        backgroundColor: Color.fromARGB(255, 134, 133, 129), // Cor da AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.yellow),
          onPressed: () {
            Navigator.pop(context); // Volta à tela anterior
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF2E003E), Color(0xFF8B2283)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              
              // Personagem 1: Captain Falcon
              PersonagemWidget(
                nome: 'CAPTAIN FALCON',
                nave: 'BLUE FALCON',
                imagemNave:
                    'https://www.dropbox.com/scl/fi/epkg66dsnn6j4s1sfhifb/Blue_FalconSNES2-removebg-preview.png?rlkey=r14pujrdd9k4tb4vqzluz8eti&st=2jg4txm7&raw=1',
                imagemPersonagem:
                    'https://www.dropbox.com/scl/fi/4d63if8cw69uewfce84ep/captain_falcon.png?rlkey=97x9eql2obks6crfxkjl5ge7a&st=m60drw31&raw=1',
                descricaoPersonagem:
                    'O lendário piloto de F-Zero, conhecido tanto por suas habilidades excepcionais nas pistas quanto por seu misterioso passado. Captain Falcon é famoso por seu estilo de pilotagem agressivo e sua nave lendária, a Blue Falcon.',
                descricaoNave:
                    'A Blue Falcon é a nave de alta performance pilotada por Captain Falcon. Equipada com um excelente equilíbrio entre velocidade e manobrabilidade, ela é uma das naves mais confiáveis em qualquer circuito, tornando-a ideal tanto para iniciantes quanto para pilotos experientes.',
                corNome: Colors.blueAccent,
                corNave: Colors.blue,
                fonteNome: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                fonteNave: TextStyle(fontFamily: 'Arial', fontSize: 25),
                corPersonagem: Colors.blue.withOpacity(0.2),
                corCaixaNave: Colors.blueAccent.withOpacity(0.3),
              ),
              SizedBox(height: 20),

              // Personagem 2: Dr. Stewart
              PersonagemWidget(
                nome: 'DR. STEWART',
                nave: 'GOLDEN FOX',
                imagemNave:
                    'https://www.dropbox.com/scl/fi/hy1jioluzab13qz4xwjmp/Golden_FoxSNES2-removebg-preview.png?rlkey=riqpndafp1460rf1eqthkfzkl&st=yzxmamrf&raw=1',
                imagemPersonagem:
                    'https://www.dropbox.com/scl/fi/bf5tbbub049y2e0rmn43y/Dr._StewartSNES2-removebg-preview.png?rlkey=7g5znksji25febofqhxqp2wt8&st=jnfkxox5&raw=1',
                descricaoPersonagem:
                    'Dr. Stewart é um médico brilhante e engenheiro especializado em tecnologia de naves. Após a morte de seu pai, ele herdou a Golden Fox, uma das naves mais rápidas de F-Zero. Além de suas habilidades médicas, Dr. Stewart é um piloto extremamente habilidoso, conhecido por sua precisão nas manobras.',
                descricaoNave:
                    'A Golden Fox é famosa por sua incrível aceleração, o que permite a Stewart sair na frente de seus competidores rapidamente. No entanto, sua baixa durabilidade exige que o piloto tenha extrema precisão e cuidado, já que a nave não aguenta muitos impactos.',
                corNome: Colors.yellow,
                corNave: Colors.orangeAccent,
                fonteNome: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
                fonteNave: TextStyle(fontFamily: 'Courier', fontSize: 24),
                corPersonagem: Colors.yellow.withOpacity(0.2),
                corCaixaNave: Colors.orangeAccent.withOpacity(0.3),
              ),
              SizedBox(height: 20),

              // Personagem 3: Pico
              PersonagemWidget(
                nome: 'PICO',
                nave: 'WILD GOOSE',
                imagemNave:
                    'https://www.dropbox.com/scl/fi/mdqefxnkecq4aackpn1qs/Wild_GooseSNES-removebg-preview.png?rlkey=15k4gydq8trdxb5ao8fs5sz9v&st=0evgtjdk&raw=1',
                imagemPersonagem:
                    'https://www.dropbox.com/scl/fi/yka6ke3f5sknfq1v5ako9/PicoSNES2.PNG-removebg-preview.png?rlkey=u9nn9sj7wicpyf130gmkrowwv&st=ftguhg7z&raw=1',
                descricaoPersonagem:
                    'Pico é um alienígena ex-militar temido por sua agressividade e comportamento imprevisível. Antes de se tornar um piloto de F-Zero, ele era um soldado altamente treinado, com habilidades em combate que o tornam uma ameaça dentro e fora das pistas. Sua nave, Wild Goose, reflete sua personalidade implacável.',
                descricaoNave:
                    'A Wild Goose é uma nave extremamente resistente, capaz de suportar grandes danos. Ela não é a mais rápida, mas sua durabilidade compensa qualquer desvantagem em velocidade, permitindo que Pico use táticas mais agressivas para eliminar seus oponentes.',
                corNome: Colors.green,
                corNave: Colors.purple,
                fonteNome: TextStyle(
                    fontFamily: 'Verdana',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                fonteNave: TextStyle(fontFamily: 'Times', fontSize: 25),
                corPersonagem: Colors.green.withOpacity(0.2),
                corCaixaNave: Colors.purple.withOpacity(0.3),
              ),
              SizedBox(height: 20),

              // Personagem 4: Samurai Goroh
              PersonagemWidget(
                nome: 'SAMURAI GOROH',
                nave: 'FIRE STINGRAY',
                imagemNave:
                    'https://www.dropbox.com/scl/fi/3oudo9b8qj9rdqgd88mr6/Fire_StingraySNES2-removebg-preview.png?rlkey=duim2vl2qhak37viihgslonpc&st=bad46tgj&raw=1',
                imagemPersonagem:
                    'https://www.dropbox.com/scl/fi/6bo9jgw1kmjl3yh8ukshs/Samurai_GorohSNES.PNG-removebg-preview.png?rlkey=retiubgyz7q1sow1peg9l1dfu&st=lz73tf1s&raw=1 ',
                descricaoPersonagem:
                    'Samurai Goroh é o arquirrival de Captain Falcon e líder de uma gangue de mercenários. Embora seja conhecido por suas táticas sujas e traições, ele é um piloto habilidoso que usa sua força e astúcia para dominar nas corridas.',
                descricaoNave:
                    'A Fire Stingray é uma das naves mais rápidas em termos de velocidade máxima, mas sua aceleração é bastante lenta. Seu design robusto permite que Goroh suporte colisões enquanto espera o momento certo para alcançar seus oponentes e ultrapassá-los nas retas longas.',
                corNome: Colors.red,
                corNave: Colors.pinkAccent,
                fonteNome: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
                fonteNave: TextStyle(fontFamily: 'Helvetica', fontSize: 24),
                corPersonagem: Colors.red.withOpacity(0.2),
                corCaixaNave: Colors.pinkAccent.withOpacity(0.3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para o Personagem
class PersonagemWidget extends StatelessWidget {
  final String nome;
  final String nave;
  final String imagemNave;
  final String imagemPersonagem;
  final String descricaoPersonagem;
  final String descricaoNave;
  final Color corNome;
  final Color corNave;
  final TextStyle fonteNome;
  final TextStyle fonteNave;
  final Color corPersonagem;
  final Color corCaixaNave;

  PersonagemWidget({
    required this.nome,
    required this.nave,
    required this.imagemNave,
    required this.imagemPersonagem,
    required this.descricaoPersonagem,
    required this.descricaoNave,
    required this.corNome,
    required this.corNave,
    required this.fonteNome,
    required this.fonteNave,
    required this.corPersonagem,
    required this.corCaixaNave,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Caixa da nave
        Container(
          color: corCaixaNave,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                nave,
                style: fonteNave.copyWith(color: corNave),
              ),
              Image.network(imagemNave,
                  width: 300, height: 290), // Imagem da nave
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  descricaoNave,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
        // Caixa do personagem
        Container(
          color: corPersonagem,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Image.network(imagemPersonagem,
                  width: 550, height: 350), // Imagem do personagem
              Text(
                nome,
                style: fonteNome.copyWith(color: corNome),
              ),
              Container(
                child: Text(
                  descricaoPersonagem,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
