import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class listtodo extends StatefulWidget {
  @override
  _listtodoState createState() => _listtodoState();
}

class _listtodoState extends State<listtodo> {
 DateTime selecteday=DateTime.now();

 DateTime Focusday=DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TableCalendar(
            selectedDayPredicate: (day){
             return isSameDay(day,selecteday);
            },
            onDaySelected: (sday,fday){
              setState(() {

              });
              selecteday=sday;
              Focusday=fday;
            },
            calendarFormat: CalendarFormat.week,
              focusedDay: DateTime.now(),
              firstDay: DateTime.now().subtract(Duration(days:365)),
              lastDay:  DateTime.now().add(Duration(days:365)),
            calendarStyle: CalendarStyle(
              selectedDecoration:BoxDecoration(
                color:Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              selectedTextStyle:TextStyle(
                color: Colors.green
              ),
                todayDecoration:BoxDecoration(
                  color:Colors.indigo,
                  borderRadius: BorderRadius.circular(8),
                ),
                todayTextStyle:TextStyle(
                    color: Colors.green
                ),
              defaultDecoration:BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              defaultTextStyle: TextStyle(
                color: Colors.black,
              ),
            ),
            weekendDays: [],
            daysOfWeekStyle:DaysOfWeekStyle(
              decoration: BoxDecoration(
                color:Colors.white,
            ) ,
              weekdayStyle: TextStyle(
                color: Colors.black,
              ),
          ),

        ],
      ),
    );
  }
}
