import 'package:flutter/material.dart';

class DropTier {
  final String tier;
  final String tierexplication;

  DropTier(this.tier, this.tierexplication);
}

List<DropTier> tiers = [
  DropTier("Tier 01", "( players with the best rank )."),
  DropTier("Tier 02", "( players with the second best rank )."),
  DropTier("Tier 03", "( players with the third best rank )."),
  DropTier("Tier 04", "( all ranks below the third )."),
];

class TierSelectList extends StatefulWidget {
  @override
  _TierSelectListState createState() => _TierSelectListState();
}

class _TierSelectListState extends State<TierSelectList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        ...tiers.map((DropTier tier) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, tier);
            },
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                SizedBox(width: 10),
                Text(tier.tier),
                SizedBox(width: 10),
                Text(tier.tierexplication,
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
