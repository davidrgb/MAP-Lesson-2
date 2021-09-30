import 'package:flutter/material.dart';
import 'package:lesson2/model/userrecord.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profileScreen';
  late final UserRecord userRecord;

  ProfileScreen(this.userRecord);

  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<ProfileScreen> {
  late _Controller con;
  bool editMode = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
        title: Text('Profile'),
        actions: [
          editMode
              ? IconButton(
                  onPressed: con.save,
                  icon: Icon(Icons.check),
                )
              : IconButton(
                  onPressed: con.edit,
                  icon: Icon(Icons.edit),
                ),
        ],
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Name',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      enabled: editMode,
                      initialValue: widget.userRecord.name,
                      validator: con.validateName,
                      onSaved: con.saveName,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Phone',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      enabled: editMode,
                      initialValue: widget.userRecord.phone,
                      validator: con.validatePhone,
                      onSaved: con.savePhone,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Age',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      enabled: editMode,
                      initialValue: widget.userRecord.age.toString(),
                      validator: con.validateAge,
                      onSaved: con.saveAge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Controller {
  late _ProfileState state;
  _Controller(this.state);

  void save() {
    state.render(() => state.editMode = false);
  }

  void edit() {
    state.render(() => state.editMode = true);
  }

  String? validateName(String? value) {
    return null;
  }

  void saveName(String? value) {}

  String? validatePhone(String? value) {
    return null;
  }

  void savePhone(String? value) {}

  String? validateAge(String? value) {
    return null;
  }

  void saveAge(String? value) {}
}
