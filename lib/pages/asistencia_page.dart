import 'package:flutter/material.dart';

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
            side: const BorderSide(color: Colors.orange),
          ),
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
