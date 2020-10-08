import 'package:flutter/material.dart';

class DropStreamer {
  final String streamer;
  final String streamerexplication;

  DropStreamer(this.streamer, this.streamerexplication);
}

List<DropStreamer> streamers = [
  DropStreamer("No", "( do you stream on any platform? )"),
  DropStreamer("Yes", "( do you stream on any platform? )"),
];

class StreamerSelectList extends StatefulWidget {
  @override
  _StreamerSelectListState createState() => _StreamerSelectListState();
}

class _StreamerSelectListState extends State<StreamerSelectList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        ...streamers.map((DropStreamer streamers) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, streamers);
            },
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                SizedBox(width: 10),
                Text(streamers.streamer),
                SizedBox(width: 10),
                Text(streamers.streamerexplication,
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
