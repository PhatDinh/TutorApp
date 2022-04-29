import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tutor_app/models/review.dart';
import 'package:tutor_app/screens/Tutor/widgets/text_box.dart';

class CarouselTextBox extends StatefulWidget {
  const CarouselTextBox({Key key}) : super(key: key);

  @override
  State<CarouselTextBox> createState() => _CarouselTextBoxState();
}

class _CarouselTextBoxState extends State<CarouselTextBox> {
  List<Review> listFeedbacks;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      child: CarouselSlider(
        items: [
          ...List.generate(listFeedbacks.length, (index) {
            Review temp = listFeedbacks[index];
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
