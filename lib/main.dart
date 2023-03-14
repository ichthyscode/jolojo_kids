import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SimpleAnimation()));
}

class SimpleAnimation extends StatelessWidget {
  const SimpleAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Family';
    return MaterialApp(
      title: 'Family',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              expandedHeight: 240,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Wow'),
                background: Image(
                  image: AssetImage('lib/assets/roof.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              floating: true,
            )
          ],
          body: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              ProfileCard(
                name: 'Lim',
                age: 31,
                imageUrl: 'lib/assets/lim.png',
              ),
              ProfileCard(
                name: 'Yeseul',
                age: 33,
                imageUrl: 'lib/assets/yeseul.png',
              ),
              ProfileCard(
                name: 'Joana',
                age: 6,
                imageUrl: 'lib/assets/joana.png',
              ),
              ProfileCard(
                name: 'Lois',
                age: 5,
                imageUrl: 'lib/assets/lois.png',
              ),
              ProfileCard(
                name: 'Joel',
                age: 3,
                imageUrl: 'lib/assets/joel.png',
              ),
              ProfileCard(
                name: 'Boas',
                age: 0,
                imageUrl: 'lib/assets/boas.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final int age;
  final String imageUrl;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.age,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        splashColor: Colors.amberAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
        leading: CircleAvatar(
          backgroundImage: Image.asset(imageUrl).image,
        ),
        title: Text(name),
        subtitle: Text('Alter: ' + age.toString()),
        enableFeedback: true,
        trailing: Icon(Icons.abc_outlined),
        onTap: () => {},
      ),
    );
  }
}
