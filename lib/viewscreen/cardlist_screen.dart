import 'package:flutter/material.dart';
import 'package:lesson2/model/course.dart';
import 'package:lesson2/viewscreen/view/webimage.dart';

class CardListScreen extends StatefulWidget {
  static const routeName = '/cardListScreen';

  final List<Course> allCourses;

  CardListScreen(this.allCourses);

  @override
  State<StatefulWidget> createState() {
    return _CardListState();
  }
}

class _CardListState extends State<CardListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card List Demo'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var course in widget.allCourses)
                Card(
                  color: Colors.lime[200],
                  elevation: 15.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          course.number,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        WebImage(url: course.imageURL, context: context),
                        Text(
                          course.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'Prerequisites: ${course.prereq}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
