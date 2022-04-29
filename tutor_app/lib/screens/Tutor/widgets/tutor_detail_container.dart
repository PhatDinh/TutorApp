import 'package:flutter/material.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:tutor_app/screens/Tutor/tutors_detail_screen.dart';
import 'package:tutor_app/widgets/rounded_tab_text.dart';

class TutorDetailContainer extends StatefulWidget {
  final Tutor tutor;
  const TutorDetailContainer({Key key, this.tutor}) : super(key: key);

  @override
  State<TutorDetailContainer> createState() => _TutorDetailContainerState();
}

class _TutorDetailContainerState extends State<TutorDetailContainer> {
  bool isFavorite = false;

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

  List<Widget> listSpec(String spec) {
    print(spec);
    List<String> temp = spec.split(',');
    return List.generate(temp.length, (index) {
      return RoundedTabText(nameTab: temp[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 60,
                width: 50,
                child: ClipOval(
                  child: Image.network(
                    widget.tutor.avatar,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 3,
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text(widget.tutor.name,
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
                              children: calcStar(5)),
                        ),
                      ]),
                ),
              ),
              //const Spacer(),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: isFavorite
                      ? const Icon(Icons.favorite)
                      : const Icon(Icons.favorite_border)),
            ]),
          ])),
    );
  }
}
