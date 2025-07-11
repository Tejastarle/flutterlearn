import 'package:flutter/material.dart';
//mport 'package:helloworld/widgets/list.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xff00ffff),
          child: ListView(
            children: [
              DrawerHeader(
                  child: Container(
                    color: Colors.amberAccent,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/premium-vector/avatar-profile-icon-flat-style-male-user-profile-vector-illustration-isolated-background-man-profile-sign-business-concept_157943-38764.jpg?semt=ais_hybrid&w=740'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('kjashbhcas@gmail.com'),
                            Text('random person')
                          ],
                        )
                      ],
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('my files'),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Add connection'),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text('Add Files'),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('My Trash'),
              ),
              ListTile(
                leading: Icon(Icons.recycling),
                title: Text('My Bin'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('highlight'),
              ),
              ListTile(
                leading: Icon(Icons.rate_review),
                title: Text('Rate'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.login),
                title: Text('profile'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('logout'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('drawer widgets'),
        backgroundColor: Color(0xff07ff66),
      ),
      body: Container(
        child: Center(
          child: Text('hey there'),
        ),
      ),
    );
  }
}
