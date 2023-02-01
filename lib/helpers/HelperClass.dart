//to connect with http, we need this class::

import 'package:http/http.dart' as http;
import 'package:rest_api/model/CourseModel.dart';

class HelperClass {

  //there is onlu one Funtion, and it returns a future:
  Future<List<Courses>> getCourse() async {
    //first, create a client obj, to open port once:
    var client = http.Client();

    //second, init url:
    var uri = 'https://nut-case.s3.amazonaws.com/coursessc.json';

    //third, convert this uri to string:
    var url = Uri.parse(uri);

    //fourth, call this url from app;
    var respone = await client.get(url);
    //this will fetch the url data to response variable:

    //to check the status:
    if (respone.statusCode == 200) {
      var json = respone.body;

      //then, return to coursesfromJson:
      return coursesFromJson(json);
      //this will pass the json data, to model:
    }
     return getCourse();
  }

}
