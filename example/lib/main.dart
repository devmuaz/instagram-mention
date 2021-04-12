import 'package:flutter/material.dart';
import 'package:instagram_mention/instagram_mention.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Instagram Widgets Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InstagramMention(text: 'devmuaz'),
            const SizedBox(height: 75),
            InstagramMentionWithAvatar(
              image: Image.network('https://i.pinimg.com/originals/1f/b5/67/1fb567258e278aae24f49e6d5a1950b4.jpg'),
              text: 'Lily Collins',
            )
          ],
        ),
      ),
    );
  }
}
