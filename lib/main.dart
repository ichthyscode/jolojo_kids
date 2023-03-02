import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(home: SimpleAnimation()));
}

class SimpleAnimation extends StatelessWidget {
  const SimpleAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Family';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        backgroundColor: Colors.cyanAccent,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 50,
            child: Center(
              child: Text('Nice'),
            ),
          ),
          Container(
            height: 100,
            child: Center(
              child: RiveAnimation.network(
                'https://cdn.rive.app/animations/vehicles.riv',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  final String name;
  final int age;
  final Image image;

  const Profile({
    Key? key,
    required this.name,
    required this.age,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
