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
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/login': (context) => const LoginPage(),
        '/asistencia': (context) => const AsistenciaPage(),
      },
    );
  }
}

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
                    "Registrar\nAsistencia", // Salto de línea para que quede en dos líneas
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
                    Image.asset(
                      "assets/images/imagen1.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/imagen2.png",
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 16),
                          Image.asset(
                            "assets/images/imagen3.png",
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
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
                        children: [
                          const Text("Desarrolladores:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          const SizedBox(height: 8),
                          const Text("Aguilar Camilo", style: TextStyle(color: Colors.white)),
                          const Text("Rios Maria Fernanda", style: TextStyle(color: Colors.white)),
                          const Text("Roncanio Roldan Alejandro", style: TextStyle(color: Colors.white)),
                          const SizedBox(height: 16),
                          const Text("Facultades:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          const SizedBox(height: 8),
                          const Text("Psicología", style: TextStyle(color: Colors.white)),
                          const Text("Humanidades y Ciencias de la Educación", style: TextStyle(color: Colors.white)),
                          const Text("Ingeniería", style: TextStyle(color: Colors.white)),
                          const Text("Ciencias Económicas y Administrativas", style: TextStyle(color: Colors.white)),
                          const Text("Ciencias Jurídicas y Políticas", style: TextStyle(color: Colors.white)),
                          const SizedBox(height: 16),
                          const Text("Programas:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          const SizedBox(height: 8),
                          const Text("Pregrados", style: TextStyle(color: Colors.white)),
                          const Text("Posgrados", style: TextStyle(color: Colors.white)),
                          const Text("Diplomados", style: TextStyle(color: Colors.white)),
                          const Text("Cursos Libres", style: TextStyle(color: Colors.white)),
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

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Iniciar Sesión",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(30),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.orange)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Iniciar Sesión",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: "Correo electrónico",
                        hintText: "nombre@correo.com"),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Contraseña"),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                    onPressed: () {},
                    child: const Text("Entrar",
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AsistenciaPage extends StatelessWidget {
  const AsistenciaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Registrar Asistencia",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(30),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.orange)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Registrar Asistencia",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(value: "1", child: Text("Estudiante 1")),
                      DropdownMenuItem(value: "2", child: Text("Estudiante 2")),
                    ],
                    onChanged: (value) {},
                    decoration: const InputDecoration(labelText: "Estudiante"),
                  ),
                  const SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(value: "mat1", child: Text("Matemáticas")),
                      DropdownMenuItem(value: "mat2", child: Text("Historia")),
                    ],
                    onChanged: (value) {},
                    decoration: const InputDecoration(labelText: "Materia"),
                  ),
                  const SizedBox(height: 20),
                  const Text("Usuario no válido",
                      style: TextStyle(color: Colors.red)),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                    onPressed: () {},
                    child: const Text("Registrar",
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
