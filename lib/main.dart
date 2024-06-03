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

        // 1- text in body
        // Text widget and its styles => color - fontSize - fontWeight
        // backgroundColor
        // body: const Text(
        //   "Hello world!",
        //   style: TextStyle(
        //       color: Colors.blue,
        //       fontSize: 40.2,
        //       fontWeight: FontWeight.bold,
        //       backgroundColor: Colors.indigo),
        // ),
        // ==========================================
        // 2- container
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            width: 300,
            height: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.black, width: 10),
                borderRadius: const BorderRadius.all(Radius.circular(150)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blue,
                    offset: Offset(0, 0),
                    spreadRadius: 5,
                    blurRadius: 10,
                  )
                ]),
            child: const Text(
              "Hello World!",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent),
            ),
          ),
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
