import 'package:flutter/material.dart';

class DropWCS {
  final String wcs;
  final String wcsexplication;

  DropWCS(this.wcs, this.wcsexplication);
}

List<DropWCS> wcss = [
  DropWCS("No", "( would you change state to play? )"),
  DropWCS("Yes", "( would you change state to play? )"),
];

class WCSSelectList extends StatefulWidget {
  @override
  _WCSSelectListState createState() => _WCSSelectListState();
}

class _WCSSelectListState extends State<WCSSelectList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        ...wcss.map((DropWCS wcss) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, wcss);
            },
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                SizedBox(width: 10),
                Text(wcss.wcs),
                SizedBox(width: 10),
                Text(wcss.wcsexplication,
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
