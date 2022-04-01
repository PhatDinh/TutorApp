import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tutor_app/models/feedback.dart';
import 'package:tutor_app/screens/Tutor/widgets/text_box.dart';

class CarouselTextBox extends StatelessWidget {
  const CarouselTextBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      child: CarouselSlider(
        items: [
          ...List.generate(FeedbackDummy.offData.length, (index) {
            Feedbacks temp = FeedbackDummy.offData[index];
            return TextBox(
              boxDetail: temp.content,
              boxRating: temp.rating,
              boxName: temp.firstId,
            );
          })
        ],
        //Slider Container properties
        options: CarouselOptions(
          autoPlay: false,
        ),
      ),
    );
  }
}
