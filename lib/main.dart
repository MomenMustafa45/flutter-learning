import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp for first page in app
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Title")),

        // Text widget and its styles => color - fontSize - fontWeight
        // backgroundColor
        body: const Text(
          "Hello world!",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 40.2,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.indigo),
        ),
      ),
    );
  }
}

// from ENG.abdelrahman

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Home(),
//     );
//   }
// }

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Text('data'),
//     );
//   }
// }
