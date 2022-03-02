import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Tutor/widgets/text_box.dart';

class CarouselTextBox extends StatelessWidget {
  const CarouselTextBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.9,
      height: MediaQuery.of(context).size.height * 0.3,
      child: CarouselSlider(
        items: [
          TextBox(
            boxName: 'Dinh Phat',
            boxDetail: 'Good Teaching',
          ),
          TextBox(
            boxName: 'Dinh Phat',
            boxDetail: 'Good Teaching',
          ),
          TextBox(
            boxName: 'Dinh Phat',
            boxDetail: 'TGood Teaching',
          ),
          TextBox(
            boxName: 'Dinh Phat',
            boxDetail: 'TGood Teaching',
          ),
        ],
        //Slider Container properties
        options: CarouselOptions(
          autoPlay: false,
        ),
      ),
    );
  }
}
