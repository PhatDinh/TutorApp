import 'package:flutter/material.dart';

class TutorDetailContainer extends StatelessWidget {
  const TutorDetailContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(
              radius: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
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
                        Icon(Icons.star_half, color: Colors.yellow),
                        Icon(Icons.star_outline, color: Colors.yellow),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 4),
                      child: Text("Viet nam"),
                    )
                  ]),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {}, child: const Icon(Icons.favorite_border)),
          ]),
        ]));
  }
}
