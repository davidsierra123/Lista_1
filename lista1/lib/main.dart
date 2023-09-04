import 'package:flutter/material.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> horizontalList = [
  'Lista 1',
  'Lista 2',
  'Lista 3',
  'Lista 4',
  'Lista 5'
  ];
  final List<String> verticalList = [
    "Lista 1",
    "Lista 2",
    "Lista 3",
    'Lista 4',
    'Lista 5'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Listas de forma diferentes", style: TextStyle(color:Colors.black),),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: Row(children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: horizontalList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(horizontalList[index]),
                        ),
                      ),
                    );
                  })),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: verticalList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text(verticalList[index]),
                      ),
                    );
                  })),
        ]),
      ),
    );
  }
}
