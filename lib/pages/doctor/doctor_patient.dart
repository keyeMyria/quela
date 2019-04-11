import 'package:flutter/material.dart';
import 'package:quela/models/doctor.dart';
import 'package:quela/utils/hex_code.dart';

class DetailsPage extends StatelessWidget {
  final PatientId patient;

  DetailsPage({Key key, @required this.patient}) : assert(patient != null);

  Widget _patientInfo(BuildContext context, PatientId patient) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(height: (MediaQuery.of(context).size.height / 15)),
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width / 100) * 10),
                  child: Text(
                    "${patient.name}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width / 100) * 10),
                  child: Text(
                    "${patient.surname}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Container(width: (MediaQuery.of(context).size.width / 3.5)),
            ClipRRect(
              borderRadius: BorderRadius.circular(90.0),
              child: Image.network(
                patient.profilePic,
                fit: BoxFit.fill,
                scale: 1.0,
                width: 80.0,
                height: 80.0,
              ),
            ),
          ],
        ),
        Container(height: (MediaQuery.of(context).size.height / 50)),
        Padding(
          padding: EdgeInsets.only(
              left: (MediaQuery.of(context).size.width / 100) * 10),
          child: Text(
            "${patient.illness}",
            style: TextStyle(
              color: HexColor("#FFE0B9"),
              fontSize: 17.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(height: (MediaQuery.of(context).size.height / 70)),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width / 100) * 10),
              child: Text(
                "Resides at room ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              "${patient.roomNo}",
              style: TextStyle(
                color: HexColor("#FF9A91"),
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Container(height: (MediaQuery.of(context).size.height / 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width / 100) * 10),
                  child: Text(
                    "${patient.age}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Container(height: (MediaQuery.of(context).size.height / 80)),
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width / 100) * 10),
                  child: Text(
                    "Age",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width / 100) * 10),
                  child: Text(
                    "${patient.weight} kg",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Container(height: (MediaQuery.of(context).size.height / 80)),
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width / 100) * 10),
                  child: Text(
                    "Weight",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width / 100) * 10),
                  child: Text(
                    "${patient.height} cm",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Container(height: (MediaQuery.of(context).size.height / 80)),
                Padding(
                  padding: EdgeInsets.only(
                      left: (MediaQuery.of(context).size.width / 100) * 10),
                  child: Text(
                    "Height",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: HexColor("#214D70"),
              ),
              child: _patientInfo(context, patient),
            ),
          ),
        ],
      ),
    );
  }
}