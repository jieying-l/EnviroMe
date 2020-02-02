import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
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
                        //text
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

                        //icons
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
                  ]))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Community',
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 1,
        crossAxisSpacing: 10.0, //vertical
        mainAxisSpacing: 40.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          myItems(Icons.nature, "Environmental Report", 0XFF2E7D32),
          myItems(Icons.new_releases, "Warnings", 0XFF2E7D32),
          myItems(Icons.cloud, "Weather", 0XFF2E7D32),
          myItems(Icons.home, "House Updates", 0XFF2E7D32),
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
