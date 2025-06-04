import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  List item=[1,2,3,4,5,6,7,8,9,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView maha'),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body:GridView.builder(
    itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              crossAxisCount: 5),
          itemBuilder:(context,index){
            return Container(
              width: 30,height: 50,
              color: Colors.lightGreenAccent,
              child: Text('$index  Ma'),
            );
    },
      ),
    );
  }
}
