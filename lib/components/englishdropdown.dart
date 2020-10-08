import 'package:flutter/material.dart';

class DropEnglish {
  final String english;

  DropEnglish(
    this.english,
  );
}

List<DropEnglish> englishs = [
  DropEnglish("No"),
  DropEnglish("Basic"),
  DropEnglish("Medium"),
  DropEnglish("Advanced"),
  DropEnglish("Native/Fluent"),
];

class EnglishSelectList extends StatefulWidget {
  @override
  _EnglishSelectListState createState() => _EnglishSelectListState();
}

class _EnglishSelectListState extends State<EnglishSelectList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        ...englishs.map((DropEnglish englishs) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, englishs);
            },
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                SizedBox(width: 10),
                Text(englishs.english),
              ]),
            )),
          );
        }).toList(),
      ]),
    );
  }
}
