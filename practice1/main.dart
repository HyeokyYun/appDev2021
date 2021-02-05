import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice1',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: Text(
          'Algorithm Study',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.teal[400],
        brightness: Brightness.light,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/algorithm.png'),
                backgroundColor: Colors.white,
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.black45,
              thickness: 3.0,
            ),
            Text(
              'Team Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                letterSpacing: 2.0,
                decoration: TextDecoration.underline,
              ),
            ),
            // SizedBox(
            //   height: 15.0,
            // ),
            Text(
              'Algo Morgo',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Solved Problems',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                letterSpacing: 2.0,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '10',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              children: [
                Icon(
                  Icons.check_box_outlined,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Greedy',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outlined,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Brute Force',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outlined,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'BFS',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outlined,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'DFS',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.0),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/flutter.jpg'),
                backgroundColor: Colors.transparent,
                radius: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
