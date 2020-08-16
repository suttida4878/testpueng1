import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

_dayview() async {
  const url =
      'https://wegivmerchantapp.firebaseapp.com/exam/bi-member-day-2020-04-01.json';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_monyhview() async {
  const url =
      'https://wegivmerchantapp.firebaseapp.com/exam/bi-member-month-2020-03.json';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_quarterview() async {
  const url =
      'https://wegivmerchantapp.firebaseapp.com/exam/bi-member-quarter-2019-06.json';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_yearview() async {
  const url =
      'https://wegivmerchantapp.firebaseapp.com/exam/bi-member-year-2019-04-01.json';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
          margin: EdgeInsets.only(left: 10, top: 10, right: 0, bottom: 0),
          // color: Colors.pink[100],
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              //บรรทัดที่1
              Row(
                children: <Widget>[
                  Text(
                    'Welcome',
                    style: TextStyle(fontSize: 20, color: Colors.orange),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //บรรทัดที่2
              Row(
                children: <Widget>[
                  Text(
                    'SmileFUKUS Interview Exam.',
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                  )
                ],
              ),
              //บรรทัดที่3
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'images/logoone.png',
                    width: 200,
                    height: 200,
                  ),
                  Image.asset(
                    'images/logotwo.png',
                    width: 200,
                    height: 200,
                  ),
                ],
              ),

              //ปุ่ม1
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 300,
                    height: 60,
                    child: RaisedButton(
                      onPressed: _dayview,
                      child: Text('DAY VIEW'),
                      color: Colors.blue[700],
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),

              //ปุ่ม2
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 300,
                    height: 60,
                    child: RaisedButton(
                      onPressed: _monyhview,
                      child: Text('MONTH VIEW'),
                      color: Colors.blue[700],
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),

              //ปุ่ม3
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 300,
                    height: 60,
                    child: RaisedButton(
                      onPressed: _quarterview,
                      child: Text('QUARTER VIEW'),
                      color: Colors.blue[700],
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),

              //ปุ่ม4
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 300,
                    height: 60,
                    child: RaisedButton(
                      onPressed: _yearview,
                      child: Text('YEAR VIEW'),
                      color: Colors.blue[700],
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          )),
    ));
  }
}
