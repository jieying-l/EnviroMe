import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 15,
        backgroundColor: Theme.of(context).accentColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 40,
              height: 50,
              margin: EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  'https://i.pravatar.cc/100',
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'User A',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Feb 2, 2020',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 50,
                  child: Icon(
                    Icons.notifications,
                    color: Theme.of(context).accentColor,
                    size: 35,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 0,
                  width: 100,
                  height: 20,
                  child: Container(
                    child: Text('PROGRESS'),
                    width: 100,
                    height: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 30, 25, 25),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                    ),
                    child: Center(
                        child: Text('overview',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            )))),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                StatCard(
                  title: 'weekly tCO2e goal',
                  achieved: 12.45,
                  total: 16.5,
                  color: Theme.of(context).primaryColor,
                  image: Image.asset('assets/img/fish.png', width: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 30, 25, 25),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                          ),
                          child: Center(
                              child: Text('breakdown',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  )))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            ' ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '  transport',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      LinearPercentIndicator(
                        lineHeight: 10.0,
                        percent: 0.7,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor:
                            Theme.of(context).accentColor.withAlpha(30),
                        progressColor: Theme.of(context).primaryColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '  single use',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      LinearPercentIndicator(
                        lineHeight: 10.0,
                        percent: 0.6,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor:
                            Theme.of(context).accentColor.withAlpha(30),
                        progressColor: Theme.of(context).primaryColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '  utilities',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      LinearPercentIndicator(
                        lineHeight: 10.0,
                        percent: 0.3,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor:
                            Theme.of(context).accentColor.withAlpha(30),
                        progressColor: Theme.of(context).primaryColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '  food',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      LinearPercentIndicator(
                        lineHeight: 10.0,
                        percent: 0.9,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor:
                            Theme.of(context).accentColor.withAlpha(30),
                        progressColor: Theme.of(context).primaryColor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      Text(
                        ' '
                        ' '
                        'Great Job!',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey[300],
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'ENERGY SAVED',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '3500',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context).accentColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Watts',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WATER SAVED',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '58',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context).accentColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' L',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'GREEN SCORE',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '4/5',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context).accentColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Leaves',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    
                    Row(
                      children: <Widget>[],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final double total;
  final double achieved;
  final Image image;
  final Color color;

  const StatCard({
    Key key,
    @required this.title,
    @required this.total,
    @required this.achieved,
    @required this.image,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[200],
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).accentColor.withAlpha(100),
                  fontSize: 14,
                ),
              ),
              achieved < total
                  ? Image.asset(
                      'assets/img/down_orange.png',
                      width: 20,
                    )
                  : Image.asset(
                      'assets/img/up_red.png',
                      width: 20,
                    ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
          ),
          CircularPercentIndicator(
            radius: 80.0,
            lineWidth: 8.0,
            percent: achieved / (total < achieved ? achieved : total),
            circularStrokeCap: CircularStrokeCap.round,
            center: image,
            progressColor: color,
            backgroundColor: Theme.of(context).accentColor.withAlpha(30),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: achieved.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).accentColor,
                ),
              ),
              TextSpan(
                text: ' / $total',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
