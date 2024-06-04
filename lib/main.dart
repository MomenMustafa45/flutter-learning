import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List users = [
    {"name": "Ahmed", "age": 20, "title": "Anything"},
    {"name": "Mohamed", "age": 30, "title": "Don't Go AnyWhere"},
    {"name": "Abd", "age": 40, "title": "go anywhere"},
    {"name": "Abd", "age": 40, "title": "go anywhere"},
  ];

  @override
  Widget build(BuildContext context) {
    // MaterialApp for first page in app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Title")),
        // body: const Column(
        //   children: [],
        // ),

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
        // body: Center(
        //   child: Container(
        //     margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        //     padding:
        //         const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        //     width: 300,
        //     height: 300,
        //     alignment: Alignment.center,
        //     decoration: BoxDecoration(
        //         color: Colors.red,
        //         border: Border.all(color: Colors.black, width: 10),
        //         borderRadius: const BorderRadius.all(Radius.circular(150)),
        //         boxShadow: const [
        //           BoxShadow(
        //             color: Colors.blue,
        //             offset: Offset(0, 0),
        //             spreadRadius: 5,
        //             blurRadius: 10,
        //           )
        //         ]),
        //     child: const Text(
        //       "Hello World!",
        //       style: TextStyle(
        //           fontSize: 30.0,
        //           fontWeight: FontWeight.bold,
        //           color: Colors.cyanAccent),
        //     ),
        //   ),
        // ),
        // =============================================
        // 1- image widget
        // body: Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10.0),
        //     color: Colors.black,
        //     boxShadow: const [
        //       BoxShadow(
        //           color: Colors.grey,
        //           spreadRadius: 5.0,
        //           offset: Offset(0, 0),
        //           blurRadius: 7.0)
        //     ],
        //   ),
        //   child: Image.asset(
        //     "images/imageOne.jpg",
        //     width: 250.0,
        //     height: 250.0,
        //     // fit: BoxFit.,
        //   ),
        // ),
        // =======================
        // 2- row and column
        // body: Column(
        //   children: [
        //     const Text("Hello"),
        //     Image.asset("images/imageOne.jpg"),
        //     Container(
        //       alignment: Alignment.center,
        //       width: 200,
        //       height: 200,
        //       color: Colors.black54,
        //       child: const Text(
        //         "Hello Guys",
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 18.0,
        //         ),
        //       ),
        //     ),
        //     Container(
        //       width: 400,
        //       height: 100,
        //       color: Colors.amber,
        //     ),
        //   ],
        // ),
        // =======================
        // ROW
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(
        //       width: 200,
        //       height: 100,
        //       color: Colors.blue,
        //       child: const Text("hello"),
        //     ),
        //     Container(
        //       width: 200,
        //       height: 50,
        //       color: Colors.blue,
        //       child: const Text("hello"),
        //     ),
        //     Container(
        //       width: 200,
        //       height: 50,
        //       color: Colors.blue,
        //       child: const Text("hello"),
        //     ),
        //   ],
        // ),
        // ========================================
        // 3- singleChildScrollView and wrap
        // body: SingleChildScrollView(
        //     physics: const BouncingScrollPhysics(),
        //     child: Column(
        //       children: [
        //         const Text("Hello Everyone"),
        //         Container(
        //           alignment: Alignment.center,
        //           width: 200,
        //           height: 300,
        //           color: Colors.amber,
        //           child: const Text(
        //             "Yes its me",
        //             style: TextStyle(fontSize: 20.0),
        //           ),
        //         ),
        //         Container(
        //           alignment: Alignment.center,
        //           width: 200,
        //           height: 300,
        //           color: Colors.amber,
        //           child: Image.asset("images/imageOne.jpg"),
        //         ),
        //         Container(
        //           alignment: Alignment.center,
        //           width: 200,
        //           height: 300,
        //           color: Colors.amber,
        //           child: Image.asset("images/imageOne.jpg"),
        //         ),
        //       ],
        //     )),
        // =========================================
        // 4- listView
        // body: ListView.builder(
        //   itemCount: users.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       color: Colors.amber,
        //       child: Text(
        //         '${users[index]['name']} ${users[index]['age']}',
        //         style: const TextStyle(fontSize: 20.0),
        //       ),
        //     );
        //   },
        // ),
        // 5- listView separated
        // body: ListView.separated(
        //   shrinkWrap: true,
        //   // physics: NeverScrollableScrollPhysics(),
        //   itemBuilder: (context, index) {
        //     return Column(
        //       children: [
        //         Container(
        //           alignment: Alignment.center,
        //           width: 400,
        //           height: 400,
        //           color: index.isOdd ? Colors.amber : Colors.pink,
        //           child: Text(users[index]["name"]),
        //         ),
        //         Container(
        //           alignment: Alignment.center,
        //           margin: const EdgeInsets.only(top: 20.0),
        //           width: 400,
        //           height: 400,
        //           color: index.isOdd ? Colors.pink : Colors.amber,
        //           child: Text('${users[index]["age"]}'),
        //         ),
        //       ],
        //     );
        //   },
        //   separatorBuilder: (context, index) {
        //     return const Divider(
        //       color: Colors.red,
        //       thickness: 50.0,
        //     );
        //   },
        //   itemCount: users.length,
        // ),
        // =================================================================
        // 6- gridView
        // body: GridView.count(
        //   crossAxisCount: 4,
        //   crossAxisSpacing: 5.0,
        //   mainAxisSpacing: 5.0,
        //   children: [
        //     Container(
        //       color: Colors.red,
        //       child: Text("Hello"),
        //     ),
        //     Container(
        //       color: Colors.red,
        //       child: Text("Hello"),
        //     ),
        //   ],
        // ),
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
