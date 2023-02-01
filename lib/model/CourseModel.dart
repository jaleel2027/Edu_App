import 'dart:convert';

List<Courses> coursesFromJson(String str) => List<Courses>.from(json.decode(str).map((x) => Courses.fromJson(x)));

String coursesToJson(List<Courses> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Courses {
  Courses({
    required this.courseId,
    required this.courseName,
    required this.provider,
    required this.universitiesInstitutions,
    required this.parentSubject,
    required this.childSubject,
    required this.url,
    required this.nextSessionDate,
    required this.length,
    required this.videoUrl,
  });

  int courseId;
  String courseName;
  String provider;
  String universitiesInstitutions;
  String parentSubject;
  String childSubject;
  String url;
  dynamic nextSessionDate;
  dynamic length;
  String videoUrl;

  factory Courses.fromJson(Map<String, dynamic> json) => Courses(
    courseId: json["Course Id"],
    courseName: json["Course Name"],
    provider: json["Provider"],
    universitiesInstitutions: json["Universities/Institutions"],
    parentSubject:json["Parent Subject"],
    childSubject: json["Child Subject"],
    url: json["Url"],
    nextSessionDate: json["Next Session Date"],
    length: json["Length"],
    videoUrl: json["Video(Url)"],
  );

  Map<String, dynamic> toJson() => {
    "Course Id": courseId,
    "Course Name": courseName,
    "Provider": provider,
    "Universities/Institutions": universitiesInstitutions,
    "Parent Subject": parentSubject,
    "Child Subject": childSubject,
    "Url": url,
    "Next Session Date": nextSessionDate,
    "Length": length,
    "Video(Url)": videoUrl,
  };
}



