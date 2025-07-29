import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          // Image.network(
          //   'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Forget-me-not_Flower.jpg/640px-Forget-me-not_Flower.jpg',
          // ),
          Center(
            child: Container(
                height: 300,
                width: 250,
                child: Image.asset('asset/image1.webp')),
          )
        ],
      ),
    );
  }
}

