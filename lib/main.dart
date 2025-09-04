import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Checklist App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const ChecklistHomePage(),
    );
  }
}

class ChecklistHomePage extends StatelessWidget {
  const ChecklistHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Encabezado
            Container(
              width: double.infinity,
              color: Colors.orange,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  const Text(
                    "CHECKLIST",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    "assets/images/logo.png",
                    height: 100,
                  ),
                ],
              ),
            ),

            // Botones de navegación
            Container(
              color: Colors.orangeAccent,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Registro Asistencia"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Administrador"),
                  ),
                ],
              ),
            ),

            // Banner de promoción (imagen1)
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Image.asset("assets/images/imagen1.png"),
                  const SizedBox(height: 10),
                  const Text(
                    "Si eres estudiante o empleado activo, obtén \$150.000 por cada referido...",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                ],
              ),
            ),

            // Texto universidad
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Universidad San Buenaventura",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),

            // Fotos del campus (imagen2 y imagen3)
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/imagen2.png",
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/imagen3.png",
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
