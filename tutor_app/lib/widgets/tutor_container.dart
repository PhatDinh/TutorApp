import 'package:flutter/material.dart';
import 'rounded_tab_text.dart';

class TutorContainer extends StatelessWidget {
  const TutorContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
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
                Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Tutor name',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star_half, color: Colors.yellow),
                          Icon(Icons.star_outline, color: Colors.yellow),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: const [
                            RoundedTabText(
                              nameTab: 'English',
                            ),
                            RoundedTabText(
                              nameTab: 'IELTS',
                            ),
                          ],
                        ),
                      ),
                    ]),
                const Spacer(),
                TextButton(
                    onPressed: () {}, child: const Icon(Icons.favorite_border)),
              ]),
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text('Lorem ipsum dolor sit amet, consecrate'),
              ),
            ])),
      ),
    );
  }
}
