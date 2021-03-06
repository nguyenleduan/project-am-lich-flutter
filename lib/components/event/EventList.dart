import 'package:flutter/material.dart';
import '../../model/EventVO.dart';
import 'EventItem.dart';
class EventList extends StatelessWidget {
  EventList({this.data});
  final List<EventVO>? data;

  Widget renderItem(EventVO event) {
    return EventItem(event);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  ListView.builder(
      itemCount: data!.length,
      itemBuilder: (context, int index) {
        return renderItem(data![index]);
      },
    );
  }

}