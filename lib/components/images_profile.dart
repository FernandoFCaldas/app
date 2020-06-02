import 'package:flutter/material.dart';

class ImagesProfile {
  final String imagesprofile;
  final String idImage;

  ImagesProfile(this.idImage, this.imagesprofile);
}

List<ImagesProfile> listaimagesprofile = [
ImagesProfile ("img1","assets/images_profile/logo_option_1.png"),
ImagesProfile ("img2","assets/images_profile/logo_option_2.png"),
ImagesProfile ("img3","assets/images_profile/logo_option_3.png"),
ImagesProfile ("img4","assets/images_profile/logo_option_4.png"),
ImagesProfile ("img5","assets/images_profile/logo_option_5.png"),
ImagesProfile ("img6","assets/images_profile/logo_option_6.png"),
ImagesProfile ("img7","assets/images_profile/logo_option_7.png"),
ImagesProfile ("img8","assets/images_profile/logo_option_8.png"),
ImagesProfile ("img9","assets/images_profile/logo_option_9.png"),
ImagesProfile ("img10","assets/images_profile/logo_option_10.png"),
ImagesProfile ("img11","assets/images_profile/logo_option_11.png"),
ImagesProfile ("img12","assets/images_profile/logo_option_12.png"),
ImagesProfile ("img13","assets/images_profile/logo_option_13.png"),
ImagesProfile ("img14","assets/images_profile/logo_option_14.png"),
ImagesProfile ("img15","assets/images_profile/logo_option_15.png"),
ImagesProfile ("img16","assets/images_profile/logo_option_16.png"),
ImagesProfile ("img17","assets/images_profile/logo_option_17.png"),
ImagesProfile ("img18","assets/images_profile/logo_option_18.png"),
ImagesProfile ("img19","assets/images_profile/logo_option_19.png"),
ImagesProfile ("img20","assets/images_profile/logo_option_20.png"),
ImagesProfile ("img21","assets/images_profile/logo_option_21.png"),
ImagesProfile ("img22","assets/images_profile/logo_option_22.png"),
ImagesProfile ("img23","assets/images_profile/logo_option_23.png"),
ImagesProfile ("img24","assets/images_profile/logo_option_24.png"),
ImagesProfile ("img25","assets/images_profile/logo_option_25.png"),
ImagesProfile ("img26","assets/images_profile/logo_option_26.png"),
ImagesProfile ("img27","assets/images_profile/logo_option_27.png"),
ImagesProfile ("img28","assets/images_profile/logo_option_28.png"),
];

class ImagesProfileSelectList extends StatefulWidget {
  @override
  _ImagesProfileSelectListState createState() =>
      _ImagesProfileSelectListState();
}

class _ImagesProfileSelectListState extends State<ImagesProfileSelectList> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        SizedBox(height: 10,),
        ...listaimagesprofile.map((ImagesProfile imagesProfile) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, imagesProfile);
            },
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                Image.asset(
                  imagesProfile.imagesprofile,
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 10),
              ]),
            ),
            ),
          );
        }).toList(),
      ]),
    );
  }
}