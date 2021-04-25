import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MainApp());
}


class  MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    );
  }
}


class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {


 List<Color> colours = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber,
    Colors.brown,
    Colors.deepPurple,
  ];
 List<String> names = [
  'გიორგი',
  'გიორგი',
  'გიორგი',
  'გიორგი',
  'გიორგი',
  'გიორგი'
  ];

 Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("circle container with text"),
      ),
      body: Container(
      
        height: 150,
              child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Container( 
                  color: Colors.white,
              child: Column(
                children: [
     Container(
                  height: 90,
                  width: 100,
                  decoration: new BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(50.0)),
                    color: colours[index],
                  ),
                  child: Center(
                    child: Text(
                      index.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                ),
                     Container(
                  height: 50,
                  width: 100,
                    color: Colors.white,
                  child: Center(
                    child: Text(
                      names[index],
                      style: TextStyle(color: colours[index], fontSize: 10),
                    ),
                  ),
                ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
