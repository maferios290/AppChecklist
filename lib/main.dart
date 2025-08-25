
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  // Lista de sonidos de emergencia (debes agregar los archivos en assets/audio/)
  final List<Map<String, String>> emergencySounds = [
    {'label': 'Alerta General', 'file': 'alerta_general.mp3'},
    {'label': 'Emergencia Médica', 'file': 'emergencia_medica.mp3'},
    {'label': 'Incendio', 'file': 'incendio.mp3'},
    {'label': 'Caída', 'file': 'caida.mp3'},
  ];

  void _playSound(String fileName) async {
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource('audio/$fileName'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Alertas Sonoras'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Presiona un botón de emergencia:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ...emergencySounds.map((sound) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(250, 60),
                      textStyle: const TextStyle(fontSize: 20),
                      backgroundColor: Colors.redAccent,
                    ),
                    icon: const Icon(Icons.warning, size: 32),
                    label: Text(sound['label']!),
                    onPressed: () => _playSound(sound['file']!),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
