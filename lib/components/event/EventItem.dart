import 'package:flutter/material.dart';

import '../../model/EventVO.dart';
import '../../utils/date_utils.dart';
import '../../utils/lunar_solar_utils.dart';
class EventItem extends StatelessWidget {
  EventItem(this.event);

  final EventVO event;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const titleStyle = TextStyle(color: Colors.white);
    const contentStyle = TextStyle(color: Colors.white);
    var dayOfWeek = getNameDayOfWeek(event.date);
    var lunarDates = convertSolar2Lunar(event.date.day, event.date.month, DateTime.now().year, 7);
    print("${DateTime.now().year}");
    var lunarDay = lunarDates[0];
    var lunarMonth = lunarDates[1];
    print("${lunarMonth.toString()}");
    var title = '* ${dayOfWeek} - ${event.date.day}/${event.date.month} (${lunarDay}/${lunarMonth} AL) ${event.date.year} ${event.date.month} ${event.date.day}';
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                ),
            child: Text(title, style: titleStyle),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
            child: Text(event.event, style: contentStyle),
          )
        ],
      ),
    );
  }
}
