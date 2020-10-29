import 'package:flutter/material.dart';

import 'package:sidebar_animation/model/event.dart';

class EventDetailsPage extends StatelessWidget {
  final EventModel event;

  const EventDetailsPage({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(event.title, style: Theme.of(context).textTheme.display1,),
              SizedBox(height: 20.0),
              Text(event.description)
            ],
          ),
        ),
      ),
    );
  }
}