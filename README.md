## Instagram Mention Widgets

![Instagram CustomPainter](/images/instagram_widget.png)

### 'small details do matter' ❤️

This package provides simple and almost the same UI details that the real Instagram mention widget has.

It contains two types of widgets
- **InstagramMention** - Only Text
- **InstagramMentionWithAvatar** - Text and Image


## Usage

You can simply use the widgets inside your app like this
```dart
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

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

![Instagram CustomPainter](/images/main_demo.png)

## Medium articles by the author

You can always read the article I write on my [Medium](https://devmuaz.medium.com/) account which I write pretty great Flutter content out there.

## License

```
MIT License

Copyright (c) 2014 - 2021 devmuaz

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
