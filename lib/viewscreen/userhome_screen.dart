import 'package:flutter/material.dart';
import 'package:lesson2/model/userrecord.dart';

class UserHomeScreen extends StatefulWidget {

  static const routeName = '/userHomeScreen';
  final UserRecord userRecord;

  UserHomeScreen(this.userRecord);

  @override
  State<StatefulWidget> createState() {
    return _UserHomeState();
  }
}

class _UserHomeState extends State<UserHomeScreen> {
  late _Controller con;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) => setState(fn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Home'),
      ),
      body: Column(
        children: [
          Text(
            'Name: ${widget.userRecord.name}',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Name: ${widget.userRecord.email}',
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}

class _Controller {
  late _UserHomeState state;
  _Controller(this.state);
}
