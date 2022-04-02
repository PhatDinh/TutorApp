import 'package:flutter/material.dart';
import 'package:tutor_app/models/tutor.dart';

class TutorDetailContainer extends StatelessWidget {
  final Tutor tutor;

  const TutorDetailContainer({Key key, this.tutor}) : super(key: key);

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
    if (avg == 0) i -= 1;
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/tutor-detail',
              arguments: {'tutor': tutor});
        },
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 4),
                          child: Text(tutor.country),
                        )
                      ]),
                ),
                //const Spacer(),
                TextButton(
                    onPressed: () {}, child: const Icon(Icons.favorite_border)),
              ]),
            ])),
      ),
    );
  }
}
