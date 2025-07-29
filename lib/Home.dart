import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image.network(
            //   'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Forget-me-not_Flower.jpg/640px-Forget-me-not_Flower.jpg',
            // ),
            Center(
              child: Container(
                  height: 50.h,
                  width: 50.w,
                  child: Image.asset('asset/image1.webp')),
            ),
            Container(
              height: 30.h,
              width: 30.w,
              color: Colors.red,
            ),
            Text("Rahat",style: TextStyle(
              fontSize: 20.sp,
              color: Colors.blueGrey,
            ),),
          ],
        ),
      ),
    );
  }
}

