import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'progress.dart';
import 'barcode.dart';
import 'community.dart';
import 'saves.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Material myItems(IconData icon, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0X802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    heading,
                    style: TextStyle(
                      color: new Color(color),
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 30.0,
                        )))
              ],
            )
          ],
        ),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      // body: SingleChildScrollView(
      body: StaggeredGridView.count(
        crossAxisCount: 1,
        crossAxisSpacing: 10.0, //vertical
        mainAxisSpacing: 40.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Progress(),
                ),
              );
            },
            minWidth: double.infinity,
            child: myItems(Icons.graphic_eq, "Weekly Progress", 0XFF2E7D32),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            minWidth: double.infinity,
            child: myItems(Icons.graphic_eq, "Barcode Scanner", 0XFF2E7D32),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Community(),
                ),
              );
            },
            minWidth: double.infinity,
            child: myItems(Icons.graphic_eq, "Community", 0XFF2E7D32),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Saves(),
                ),
              );
            },
            minWidth: double.infinity,
            child: myItems(Icons.graphic_eq, "Saved Items", 0XFF2E7D32),
          ),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 117.0),
          StaggeredTile.extent(1, 117.0),
          StaggeredTile.extent(1, 117.0),
          StaggeredTile.extent(1, 117.0),
        ],
      ),
    );
  }
}
