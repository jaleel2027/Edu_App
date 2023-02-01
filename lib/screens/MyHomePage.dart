import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/components/CourseTile.dart';
import 'package:rest_api/helpers/HelperClass.dart';
import '../model/CourseModel.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //we need a list of courses from model, to access it:
  late List<Courses> courses;

  //setting a bool, to check data status:
  bool isDataLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  getData() async{

    //we need to call the heplerclass function here:
    courses = await HelperClass().getCourse();

    //check courses available:
    if(courses==null){
      setState(() {
        isDataLoaded=false;
      });
    }else{
      setState(() {
        isDataLoaded=true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("Courses List"),
        ),
        body: Visibility(
          visible: true,
          child: ListView.builder(
              itemBuilder: (context,index)=> CourseTile(courses: courses[index]),
          itemCount: courses.length,),
          replacement: CircularProgressIndicator(),
        )
      ),
    );
  }






}
