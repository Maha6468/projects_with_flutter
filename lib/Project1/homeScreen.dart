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
      body:GridView.count(
          crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
              padding: EdgeInsets.all(10),
              children: List.generate(20,(index)
              {
                return Container(
                  height: 50,width: 30,
                  //alignment:Alignment(50, 100),
                  color: Colors.orange,
                  child: Text('$index  maha',textAlign: TextAlign.center,),
                );
              }

              )


      )
    );
  }
}
