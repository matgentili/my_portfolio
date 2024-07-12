import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 20,
            right: 60,
            left: 60,
            bottom: 20), // Aggiunge un po' di spazio intorno al contenuto
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Portfolio.",
                    style: TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: const [
                      Text("Home"),
                      SizedBox(width: 16), // Spazio tra i testi
                      Text("About"),
                      SizedBox(width: 16),
                      Text("Services"),
                      SizedBox(width: 16),
                      Text("Portfolio"),
                      SizedBox(width: 16),
                      Text("Contact"),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi, Myself"),
                  Text("Matteo Gentili"),
                  Text("And I'm a Mobile Developer"),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
