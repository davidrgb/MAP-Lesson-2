import 'package:flutter/material.dart';
import 'package:lesson2/model/course.dart';

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
      body: Text('${widget.allCourses.length}'),
    );
  }

}