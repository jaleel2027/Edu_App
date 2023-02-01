import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/model/CourseModel.dart';



class CourseTile extends StatelessWidget {
  const CourseTile({Key? key, required this.courses}) : super(key: key);

  final Courses courses;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      color: Colors.white,
      elevation: 10,
      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${courses.courseId}',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.calendar_month,
                      size: 20,
                      color: Colors.blueGrey,),
                      SizedBox(width: 3,),
                      Text('${courses.nextSessionDate}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),),
                    ],),
                )],),
            SizedBox(height: 5,),
            Text(courses.courseName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,),),
            SizedBox(height: 1,),
            Text(courses.universitiesInstitutions,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 14,
                fontWeight: FontWeight.bold,),),
            Text(courses.provider,
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 14,
                fontWeight: FontWeight.bold,),),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            Card(
              elevation: 5,
              color: Colors.deepPurpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(courses.parentSubject,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
                SizedBox(width: 2,),
                Card(
                  elevation: 5,
                  color: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(courses.childSubject,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

              ]),
          ],
        ),
      ),
    );
  }
}
