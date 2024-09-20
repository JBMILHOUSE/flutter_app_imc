import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen>{

  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  // metodo clearfields()
  void clearFields() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: Colors.white30,
        actions: <Widget>[
           IconButton(
            onPressed: clearFields, 
            icon: const Icon(Icons.ac_unit_sharp)),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.number,

              ),
              )
        ],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.accessibility_new_sharp,
                size: 100.0,
                color: Colors.amber,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Peso(KG)"
                ),
                textAlign: TextAlign.center,
                controller: pesoController,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Altura(m)"
                ),
                textAlign: TextAlign.center,
                controller: alturaController,
              ),
              ElevatedButton(
                onPressed: () {

                }, 
                child: const Text('Infos'))
            ],
          ),
         )
    );
  }

}