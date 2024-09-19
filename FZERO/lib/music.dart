import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  final AudioPlayer _audioPlayer =
      AudioPlayer(); // Instância do player de áudio
  bool isPlaying = false; // Indica se uma música está tocando
  String currentMusicUrl = ''; // URL da música atual

  // Lista de músicas com URLs e títulos
  final List<Map<String, String>> musicList = [
    {
      'title': 'Mute City',
      'url':
          'https://www.dropbox.com/scl/fi/iu9blhrigdggs47yn190z/360ytmp3.com_192kbps-f-zero-mute-city-super-nintendo.mp3?rlkey=fsfaoncluzc91r7ztbyqx40hf&st=mnc738l1&raw=1',
    },
    {
      'title': 'Big Blue',
      'url':
          'https://www.dropbox.com/scl/fi/7e3nsr472ru1un3kmrxrk/360ytmp3.com_192kbps-f-zero-big-blue-super-nintendo.mp3?rlkey=em754chjz9zi3wzggt8w53dvd&st=jdmc8lyc&raw=1',
    },
    {
      'title': 'Death Wind',
      'url':
          'https://www.dropbox.com/scl/fi/30gkoar6o4u10bxmut793/360ytmp3.com_192kbps-f-zero-death-wind-super-nintendo.mp3?rlkey=3ycf6s9wd8am55bn3nfibe908&st=eqwnwoko&raw=1',
    },
    {
      'title': 'Ending',
      'url':
          'https://www.dropbox.com/scl/fi/uw2grsz42f49tj17uxyep/360ytmp3.com_192kbps-f-zero-ending-super-nintendo.mp3?rlkey=n13j064734nkrxwf70g4j6axg&st=3wxdk1kn&raw=1',
    },
  ];

  // URL da imagem decorativa online
  final String imageUrl =
      'https://www.dropbox.com/scl/fi/0fjjvwuu3juruq6v0geea/F-Zero_capa-removebg-preview.png?rlkey=oavtnalvfvwdj7pn9peehwh5h&st=vaac95id&raw=1';

  @override
  void dispose() {
    _audioPlayer.dispose(); // Libera recursos quando o widget for destruído
    super.dispose();
  }

  // Função para tocar uma música específica
  Future<void> _playMusic(String url) async {
    if (isPlaying && currentMusicUrl == url) {
      // Pausa a música se estiver tocando
      await _audioPlayer.pause();
      setState(() {
        isPlaying = false;
      });
    } else {
      // Toca ou retoma a música
      await _audioPlayer.play(url);
      setState(() {
        isPlaying = true;
        currentMusicUrl = url;
      });
    }
  }

  // Função para parar a música
  Future<void> _stopMusic() async {
    await _audioPlayer.stop();
    setState(() {
      isPlaying = false;
      currentMusicUrl = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 134, 133, 129), // Cor do AppBar
        title: Text('Músicas'), // Título da tela
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.yellow), // Ícone de voltar
          onPressed: () {
            Navigator.pop(context); // Volta para a tela anterior
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
        child: Column(
          children: <Widget>[
            SizedBox(height: 20), // Espaçamento superior
            Text(
              'Trilha Sonora F-ZERO', // Título da trilha sonora
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Espaçamento
            // Imagem decorativa
            Image.network(
              imageUrl,
              width: 210,
              height: 210,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 50), // Espaçamento abaixo da imagem

            // Lista de músicas com botões de tocar/pausar
            Expanded(
              child: ListView.builder(
                itemCount: musicList.length, // Número de músicas
                itemBuilder: (context, index) {
                  String title = musicList[index]['title']!; // Título da música
                  String url = musicList[index]['url']!; // URL da música
                  return Column(
                    children: [
                      Text(
                        title, // Nome da música
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          isPlaying && currentMusicUrl == url
                              ? Icons
                                  .pause // Ícone de pausa se a música estiver tocando
                              : Icons
                                  .play_arrow, // Ícone de play se não estiver tocando
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _playMusic(
                              url); // Toca ou pausa a música ao pressionar
                        },
                      ),
                      SizedBox(height: 10), // Espaçamento entre as músicas
                    ],
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
