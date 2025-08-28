import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '🎵 Music Player App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MusicHomePage(),
    );
  }
}

class MusicHomePage extends StatefulWidget {
  const MusicHomePage({super.key});

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  // Lista de canciones con íconos estilo reproductor
  final List<Map<String, dynamic>> musicTracks = [
    {'label': '🎸 Aca entre nos', 'file': 'acaentrenos.mp3', 'icon': Icons.queue_music},
    {'label': '🎶 La derrota', 'file': 'laderrota.mp3', 'icon': Icons.album},
    {'label': '🎧 Que de raro tiene', 'file': 'quederarotiene.mp3', 'icon': Icons.headphones},
    {'label': '🥁 Lástima que seas ajena', 'file': 'lastimaqueseasajena.mp3', 'icon': Icons.library_music},
  ];

  Future<void> playMusic(String file) async {
    await _audioPlayer.stop(); // Detiene si hay otra canción sonando
    await _audioPlayer.play(AssetSource(file));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "🎵 Music Player 🎶",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: Colors.black,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Botones de música
              ...musicTracks.map((track) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8,
                    ),
                    onPressed: () => playMusic("assets/audio/${track['file']}"),
                    icon: Icon(track['icon'], size: 36, color: Colors.yellowAccent),
                    label: Text(
                      track['label'],
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
