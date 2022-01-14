import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.rows, required this.columns})
      : super(key: key);
  final int rows, columns;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Puzzle Hackathon"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.lightBlue,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text("0 Moves"),
                ),
                const Text("|"),
                Container(
                  child: Text("15 Tiles"),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left:10,right: 10,bottom: 10, top: 20),
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.4,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                mainAxisExtent: 100, // here set custom Height You Want
              ),
              itemCount: widget.rows * widget.columns,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(5),
                  //   color: Colors.white,
                  // ),
                  child: Card(
                    color: Colors.pinkAccent,
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 20.0,
                    child: Center(
                      child: Text("1",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 12,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.shuffle_rounded),
                    Text(
                      "Shuffle",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
