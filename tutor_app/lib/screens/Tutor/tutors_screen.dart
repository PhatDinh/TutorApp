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
  List<FavouriteTutor> favouriteList = [];
  List<String> categoryList = [];
  List<Tutor> allTutorList = [];

  void _runFilter(String enteredKeyword) {
    List<Tutor> results = [];
    if (enteredKeyword.isEmpty) {
      setState(() {
        tutorList = allTutorList;
      });
    } else {
      results = tutorList
          .where((user) =>
              user.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      setState(() {
        tutorList = results;
      });
    }
  }

  void fetch({String topic = ''}) {
    if (topic.isEmpty) {
      TutorManager.fetchTutor().then((value) {
        setState(() {
          tutorList = value;
          allTutorList = tutorList;
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
    TutorManager.fetchfavouriteTutor().then((value) {
      setState(() {
        favouriteList = value;
      });
    });
  }

  void showFavourtie() {
    List<Tutor> temp = [];
    for (var t in favouriteList) {
      Tutor tutor = TutorManager.findTutorByList(allTutorList, t.secondId);
      if (tutor != null) temp.add(tutor);
    }
    setState(() {
      tutorList = temp;
    });
  }

  bool checkFavorite(String tutorID) {
    for (var i in favouriteList) {
      print("1." + i.secondId);
      if (i.secondId == tutorID) {
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
                onChanged: (value) => _runFilter(value),
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
                        onTap: () => showFavourtie(),
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
                final isFavorite = checkFavorite(tutorList[index].userId);
                return TutorContainer(
                    tutor: tutorList[index],
                    isFavorite: isFavorite,
                    onPressed: () {
                      TutorManager.favoriteTutor(tutorList[index].userId);
                      setState(() {});
                    });
              })
            ],
          )),
    );
  }
}
