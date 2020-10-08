import 'package:flutter/material.dart';

class DropYoutuber {
  final String youtuber;
  final String youtuberexplication;

  DropYoutuber(this.youtuber, this.youtuberexplication);
}

List<DropYoutuber> youtubers = [
  DropYoutuber("No", "( do you create any type of content on Youtube? )"),
  DropYoutuber("Yes", "( do you create any type of content on Youtube? )"),
];

class YoutuberSelectList extends StatefulWidget {
  @override
  _YoutuberSelectListState createState() => _YoutuberSelectListState();
}

class _YoutuberSelectListState extends State<YoutuberSelectList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        ...youtubers.map((DropYoutuber youtubers) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, youtubers);
            },
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                SizedBox(width: 10),
                Text(youtubers.youtuber),
                SizedBox(width: 10),
                Text(youtubers.youtuberexplication,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Roboto',
                      fontSize: 13,
                    )),
              ]),
            )),
          );
        }).toList(),
      ]),
    );
  }
}
