import 'package:flutter/material.dart';

class DropWCC {
  final String wcc;
  final String wccexplication;

  DropWCC(this.wcc, this.wccexplication);
}

List<DropWCC> wccs = [
  DropWCC("No", "( would you change country to play? )"),
  DropWCC("Yes", "( would you change country to play? )"),
];

class WCCSelectList extends StatefulWidget {
  @override
  _WCCSelectListState createState() => _WCCSelectListState();
}

class _WCCSelectListState extends State<WCCSelectList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        ...wccs.map((DropWCC wccs) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, wccs);
            },
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                SizedBox(width: 10),
                Text(wccs.wcc),
                SizedBox(width: 10),
                Text(wccs.wccexplication,
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
