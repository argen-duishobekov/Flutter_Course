import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int san = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Flutter sabak3",
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$san",
            style: TextStyle(fontSize: 70),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      san++;
                    });
                  },
                  icon: Icon(Icons.add),
                  label: Text("Increament")),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      san--;
                    });
                  },
                  icon: Icon(Icons.remove),
                  label: Text("decrement")),
            ],
          ),
        ],
      )),
    );
  }
}
