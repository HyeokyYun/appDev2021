import 'package:flutter/material.dart';

//import 'UserPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice1',
      home: MainPage(),
      //routes: {
        //'/UserPage': (context) => UserPage(),
      //},
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
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                print('search pressed');
              }),
          IconButton(
              icon: Icon(
                Icons.person,
              ),
              onPressed: () {
                print('person Tapped');
                //Navigator.pushNamed(context, '/UserPage');
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/algorithm.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                GestureDetector(
                  onTap: () {
                    print('Other account Tapped');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/flutter.jpg'),
                  ),
                ),
              ],
              accountName: Text('User'),
              accountEmail: Text('user@gmail.com'),
              arrowColor: Colors.white,
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.teal,
              ),
              title: Text('Home'),
              onTap: () {
                print('Home Tapped');
              },
            ),
            Divider(
              height: 0.0,
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              title: Text('Favorites'),
              onTap: () {
                print('Favorite Tapped');
              },
            ),
            Divider(
              height: 0.0,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting Tapped');
              },
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Padding(
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
                  child: GestureDetector(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(
                          'Logo Clicked!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 1.5,
                          ),
                        ),
                        backgroundColor: Colors.blueGrey[700],
                        duration: Duration(milliseconds: 1000),
                      ));
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/flutter.jpg'),
                      backgroundColor: Colors.transparent,
                      radius: 40.0,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
