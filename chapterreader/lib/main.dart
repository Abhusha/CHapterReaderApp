import 'package:chapterreader/ReaderScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Chapter Reader App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

var chapterLists = [
  'Chapter 1',
  'Chapter 2',
  'Chapter 3',
  'Chapter 4',
  'Chapter 5',
  'Chapter 6',
  'Chapter 7',
  'Chapter 8',
  'Chapter 9'
];

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter Reader App'),
        backgroundColor: Color(0xFFB4161B),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: GridView.builder(
            itemCount: chapterLists.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 2.0, mainAxisSpacing: 2.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  if (chapterLists[index] == "Chapter 1") {
                    print("Chapter 1 clicked");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReaderScreen(1)));
                  }

                  if (chapterLists[index] == "Chapter 2")
                    print("Chapter 2 clicked");
                  if (chapterLists[index] == "Chapter 3")
                    print("Chapter 3 clicked");
                  if (chapterLists[index] == "Chapter 4")
                    print("Chapter 4 clicked");
                  if (chapterLists[index] == "Chapter 5")
                    print("Chapter 5 clicked");
                  if (chapterLists[index] == "Chapter 6")
                    print("Chapter 6 clicked");
                  if (chapterLists[index] == "Chapter 7")
                    print("Chapter 7 clicked");
                  if (chapterLists[index] == "Chapter 8")
                    print("Chapter 8 clicked");
                  if (chapterLists[index] == "Chapter 9")
                    print("Chapter 9 clicked");
                },
                child: Card(
                  child: Column(
                    children: [
                      Icon(
                        Icons.book,
                        size: 40,
                      ),
                      Text(chapterLists[index])
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
