import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", height: 30),
            const SizedBox(width: 10),
            const Text(
              "CHECKLIST",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Spacer(),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    "Administración",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/asistencia');
                  },
                  child: const Text(
                    "Generar\nCodigo QR",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10),
                    Image.asset("assets/images/imagen1.png",
                        width: double.infinity, fit: BoxFit.cover),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Image.asset("assets/images/imagen2.png",
                              width: double.infinity, height: 200, fit: BoxFit.cover),
                          const SizedBox(height: 16),
                          Image.asset("assets/images/imagen3.png",
                              width: double.infinity, height: 200, fit: BoxFit.cover),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Spacer(),
                    Container(
                      color: Colors.black,
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Desarrolladores:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          SizedBox(height: 8),
                          Text("Aguilar Camilo", style: TextStyle(color: Colors.white)),
                          Text("Rios Maria Fernanda", style: TextStyle(color: Colors.white)),
                          Text("Roncanio Roldan Alejandro", style: TextStyle(color: Colors.white)),
                          SizedBox(height: 16),
                          Text("Facultades:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          SizedBox(height: 8),
                          Text("Psicología", style: TextStyle(color: Colors.white)),
                          Text("Humanidades y Ciencias de la Educación", style: TextStyle(color: Colors.white)),
                          Text("Ingeniería", style: TextStyle(color: Colors.white)),
                          Text("Ciencias Económicas y Administrativas", style: TextStyle(color: Colors.white)),
                          Text("Ciencias Jurídicas y Políticas", style: TextStyle(color: Colors.white)),
                          SizedBox(height: 16),
                          Text("Programas:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          SizedBox(height: 8),
                          Text("Pregrados", style: TextStyle(color: Colors.white)),
                          Text("Posgrados", style: TextStyle(color: Colors.white)),
                          Text("Diplomados", style: TextStyle(color: Colors.white)),
                          Text("Cursos Libres", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
