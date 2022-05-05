import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tutor_app/models/review.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:tutor_app/screens/Tutor/widgets/text_box.dart';

class CarouselTextBox extends StatefulWidget {
  final Tutor tutor;
  const CarouselTextBox({Key key, this.tutor}) : super(key: key);

  @override
  State<CarouselTextBox> createState() => _CarouselTextBoxState();
}

class _CarouselTextBoxState extends State<CarouselTextBox> {
  @override
  Widget build(BuildContext context) {
    List<Review> reviewList = widget.tutor.feedbacks;
    return Container(
      width: MediaQuery.of(context).size.height * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      child: CarouselSlider(
        items: [
          ...List.generate(reviewList.length, (index) {
            Review temp = reviewList[index];
            return TextBox(
              avatar: temp.firstInfo.avatar,
              boxDetail: temp.content,
              boxRating: temp.rating.toDouble(),
              boxName: temp.firstInfo.name,
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
