import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:quela/models/doctor.dart';
import 'package:quela/pages/doctor/t.dart';
import 'package:quela/utils/hex_code.dart';

class DetailsPage extends StatelessWidget {
  final PatientId patient;

  DetailsPage({Key key, @required this.patient}) : assert(patient != null);

  Widget _patientInfo(BuildContext context, PatientId patient) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.only(left: (MediaQuery.of(context).size.width / 10)),
          child: InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ),
        Container(height: (MediaQuery.of(context).size.height / 50)),
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

  Widget _patientData(BuildContext context, PatientId patient) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(height: (MediaQuery.of(context).size.height / 20)),
        Padding(
          padding: EdgeInsets.only(
              left: (MediaQuery.of(context).size.width / 100) * 10),
          child: Text(
            "Vital Data",
            style: TextStyle(
              color: HexColor("#FFE0B9"),
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Container(height: (MediaQuery.of(context).size.height / 20)),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
                left: (MediaQuery.of(context).size.width / 100) * 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            right:
                                (MediaQuery.of(context).size.width / 100) * 10),
                        child: Text(
                          patient.values[index].valCurr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      Container(
                          height: (MediaQuery.of(context).size.height / 80)),
                      Padding(
                        padding: EdgeInsets.only(
                            right:
                                (MediaQuery.of(context).size.width / 100) * 10),
                        child: Text(
                          patient.values[index].name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
                left: (MediaQuery.of(context).size.width / 100) * 25),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            right:
                                (MediaQuery.of(context).size.width / 100) * 17),
                        child: Text(
                          patient.values[index + 2].valCurr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      Container(
                          height: (MediaQuery.of(context).size.height / 80)),
                      Padding(
                        padding: EdgeInsets.only(
                            right:
                                (MediaQuery.of(context).size.width / 100) * 17),
                        child: Text(
                          patient.values[index + 2].name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _patientGraph(BuildContext context, PatientId patient) {
    return TimeSeriesRangeAnnotationMarginChart(
      _createSampleData(),
      animate: false,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesSales(new DateTime(2017, 9, 19), 5),
      new TimeSeriesSales(new DateTime(2017, 9, 26), 25),
      new TimeSeriesSales(new DateTime(2017, 10, 3), 100),
      new TimeSeriesSales(new DateTime(2017, 10, 10), 75),
    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(
                //color: HexColor("#679287"),
                ),
            child: _patientGraph(context, patient),
          ),
        ],
      ),
    );
  }
}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
