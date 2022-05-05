import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String boxName;
  final double boxRating;
  final String boxDetail;
  final String avatar;

  const TextBox({
    Key key,
    this.boxName,
    this.avatar,
    this.boxRating,
    this.boxDetail,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Card(
          elevation: 5,
          color: Colors.grey[100],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 40,
                  width: 30,
                  child: ClipOval(
                    child: Image.network(
                      avatar,
                    ),
                  ),
                ),
                Text(
                  boxName,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: calcStar(boxRating),
                ),
                Text(
                  boxDetail,
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ],
            ),
          ),
        ));
  }
}
