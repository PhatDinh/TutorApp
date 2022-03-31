import 'package:flutter/material.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:tutor_app/screens/Tutor/tutors_detail_screen.dart';
import 'rounded_tab_text.dart';

class TutorContainer extends StatelessWidget {
  final Tutor tutor;
  const TutorContainer({Key key, this.tutor}) : super(key: key);

  List<Widget> calcStar(double avg) {
    List<Widget> numStar = [];
    int i = 1;
    while (i <= avg) {
      numStar.add(Icon(Icons.star, color: Colors.yellow));
      if (avg - i <= 0.5)
        break;
      else
        i++;
    }
    if (avg - i == 0.5) {
      numStar.add(Icon(Icons.star_half, color: Colors.yellow));
      i++;
    }
    while (i < 5) {
      numStar.add(Icon(Icons.star_outline, color: Colors.yellow));
      i++;
    }
    return numStar;
  }

  List<Widget> listSpec(String spec) {
    List<String> temp = spec.split(' ');
    return List.generate(temp.length, (index) {
      return RoundedTabText(nameTab: temp[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/tutor-detail',
              arguments: {'tutor': tutor});
        },
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  TextButton(
                    onPressed: () {},
                    child: const Icon(Icons.account_circle, size: 64),
                  ),
                  Expanded(
                    child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text(tutor.name,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: calcStar(tutor.avg)),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Row(
                                children: listSpec(tutor.specialties),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  //const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Icon(Icons.favorite_border)),
                ]),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    tutor.bio,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}
