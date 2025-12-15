import 'package:flutter/material.dart';
import 'package:uniqlo/cloth-detail.dart';
import 'package:uniqlo/model/cloth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  print((Cloth.samples[index].imgLabel));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ClothDetail(cloth: Cloth.samples[index]);
                      },
                    ),
                  );
                },
                child: buildClothCard(Cloth.samples[index]),
              );
            },
            itemCount: Cloth.samples.length,
          ),
        ),
      ),
    );
  }
}

Widget buildClothCard(Cloth Cloth) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            Cloth.imgLabel,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12.0),
          Image(image: AssetImage(Cloth.imageUrl)),
          SizedBox(height: 14.0),
          Text("I'm hungry"),
        ],
      ),
    ),
  );
}
