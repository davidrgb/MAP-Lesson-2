import 'package:flutter/material.dart';

class LifecycleScreen extends StatefulWidget {
  static const routeName = '/lifecycleScreen';
  @override
  State<StatefulWidget> createState() {
    return _LifecycleState();
  }

}

class _LifecycleState extends State<LifecycleScreen> {

  @override
  void initState() {
    super.initState();
    print('======== initState: LifeCycle Demo Widget');
  }

  @override
  Widget build(BuildContext context) {
    print('======== build: LifeCycle Demo Widget');
    return Scaffold(
      appBar: AppBar(
        title: Text('Lifecycle Demo'),
      ),
      body: Text('LifeCycle Demo'),
    );
  }

  @override
  void dispose() {
    print('======== dispose: LifeCycle Demo Widgtet');
    super.dispose();
  }

}