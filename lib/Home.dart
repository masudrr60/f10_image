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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("This is a SnackBar"),
                duration: Duration(seconds: 2),
                action: SnackBarAction(
                  label: "Close",
                  onPressed: () {
                  },
                ),
              ),
            );
          },
              child: Text("Sanckbar",
                style: TextStyle(fontSize: 25),
              )),
          SizedBox(height: 2.h,),
          ElevatedButton(onPressed: (){
           showModalBottomSheet(context: context, builder: (context) {
             return Column(
               children: [
                 Center(
                   child: Text(
                     "This is a Bottom Sheet",
                     style: TextStyle(fontSize: 20.sp),
                   )),
                 Container(
                   height: 100,
                   width: 50.w,
                   color: Colors.red,
                 )
               ],
             );
           });
          },
              child: Text(
                "Bottom Sheet",
                style: TextStyle(fontSize: 25),
              )),

          SizedBox(height: 2.h,),
          ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text("OK?"),
                content: Text("This is an Alert Dialog"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
              }, child: Text("Cancle")),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
                  }, child:Text("OK")),
                ],
              );
            });
          },

              child: Text(
                "Alert Dialog",
                style: TextStyle(fontSize: 25),
              )),

        ],
      ),
    );
  }
}

