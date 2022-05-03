import 'package:flutter/material.dart';
import 'package:tutor_app/models/category.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:tutor_app/screens/Courses/course_manager.dart';
import 'package:tutor_app/screens/Tutor/tutor_manager.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';
import 'package:tutor_app/widgets/rounded_search_field.dart';
import 'package:tutor_app/widgets/rounded_tab_text.dart';
import 'package:tutor_app/widgets/tutor_container.dart';

class TutorsScreen extends StatefulWidget {
  const TutorsScreen({Key key}) : super(key: key);

  @override
  State<TutorsScreen> createState() => _TutorsScreenState();
}

class _TutorsScreenState extends State<TutorsScreen> {
  List<Tutor> tutorList = [];
  List<Tutor> favoriteList = [];
  List<String> categoryList = [];

  void fetch({String topic = ''}) {
    if (topic.isEmpty) {
      TutorManager.fetchTutor().then((value) {
        setState(() {
          tutorList = value;
        });
      });
    } else {
      topic = topic.toLowerCase();
      //topic = topic.replaceAll(RegExp(''), '-');
      TutorManager.fetchByTopic(topic).then((value) {
        setState(() {
          tutorList = value;
        });
      });
    }
  }

  void fetchFavourite() {
    TutorManager.fetchfavoriteTutor().then((value) {
      setState(() {
        favoriteList = value;
      });
    });
    List<Tutor> temp = [];
    for (var t in favoriteList) {
      Tutor tutor = TutorManager.findTutorByList(tutorList, t.id);
      if (tutor != null) temp.add(tutor);
    }
    favoriteList = temp;
  }

  bool checkFavorite(String tutorID) {
    for (var i in favoriteList) {
      print(i.name);
      if (i.id == tutorID) {
        return true;
      }
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
    fetch();
    fetchFavourite();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    TutorManager.fetchCategory().then((value) {
      setState(() {
        categoryList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              RoundedSearchField(
                onChanged: (value) {},
                hintIcon: Icons.search,
                hintText: "Search Tutors",
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      RoundedTabText(
                        nameTab: 'All',
                        onTap: () => fetch(),
                      ),
                      RoundedTabText(
                        nameTab: 'Favorite',
                        onTap: () =>
                            TutorManager.fetchfavoriteTutor().then((value) {
                          setState(() {
                            tutorList = value;
                          });
                        }),
                      ),
                      ...List.generate(
                          categoryList.length,
                          (index) => RoundedTabText(
                                nameTab: categoryList[index],
                                onTap: () => fetch(topic: categoryList[index]),
                              )),
                    ],
                  ),
                ),
              ),
              ...List.generate(tutorList.length, (index) {
                final isFavorite = checkFavorite(tutorList[index].id);
                print(isFavorite);
                return TutorContainer(
                  tutor: tutorList[index],
                  isFavorite: isFavorite,
                );
              })
            ],
          )),
    );
  }
}
