## Instagram Mention Widgets

![Instagram CustomPainter](https://github.com/devmuaz/instagram_mention/blob/master/images/instagram_widget.png)

### 'small details do matter' ❤️

This package provides simple and almost the same UI details that the real Instagram mention widget has.

It contains two types of widgets

- **InstagramMention** - Only Text
- **InstagramMentionWithAvatar** - Text and Image

## Usage

You can simply use the widgets inside your app like this

```dart
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Text only
            InstagramMention(text: 'Lily Collins'),

            const  SizedBox(height: 75),

            // Text and Image
            InstagramMentionWithAvatar(
              image: Image.network('https://i.pinimg.com/originals/1f/b5/67/1fb567258e278aae24f49e6d5a1950b4.jpg'),
              text:  'Lily Collins',
            ),
          ],
        ),
      ),
    );
  }
}
```

## Demo

![Instagram CustomPainter](https://github.com/devmuaz/instagram_mention/blob/master/images/main_demo.png)

## Medium articles by the author

You can always read the articles I write on my [devmuaz](https://devmuaz.medium.com/) account which I write pretty great flutter content out there.

## Contributions & Support

Issues and pull requests are always welcome 😄

If you find this package useful for you and liked it, give it a like ❤️ and star the repo ⭐️ it would mean a lot!

## License

**MIT**
