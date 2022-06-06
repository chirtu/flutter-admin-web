import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 76, 110)      ,
      body: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Center(
              child:
              UserAccountsDrawerHeader(
                
                accountEmail: Text('savechildren@gmail.com'), // keep blank text because email is required
                accountName: Text('Admin'),
                currentAccountPicture: CircleAvatar(
                 child: Icon(Icons.person_outline,size: 50,),
                ),
                // Row(
                //   children: <Widget>[
                //     Container(
                //       width: 90,
                //       height: 90,
                //       decoration: BoxDecoration(shape: BoxShape.circle),
                //       child: CircleAvatar(
                //         child: Icon(
                //           Icons.person_outline_sharp,size: 30,
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: <Widget>[
                //           Text('Dashboard'),
                //           Text('savechildren@gmail.com'),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ),
              // UserAccountsDrawerHeader(
              //   accountName: Text("Admin | SaveChild Tanzania"),
              //   accountEmail: Text("savechild@gmail.com"),
              //   currentAccountPicture: CircleAvatar(
              //     backgroundColor: Colors.white70,
              //     child: Icon(Icons.person_outline_sharp, size: 59,)
              //   ),
              // ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard_outlined, color:  Colors.white70,size: 15,),
              title: Text("Dashboard", style: TextStyle(color: Colors.grey),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people_rounded,color:  Colors.white70,size: 15,),
              title: Text("Users", style: TextStyle(color: Colors.grey),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.picture_as_pdf,color:  Colors.white70,size: 15,),
              title: Text("Media", style: TextStyle(color: Colors.grey),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.login_outlined, color:  Colors.white70, size: 15,),
              title: Text("Logout", style: TextStyle(color: Colors.grey),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
      ),
    );
  }
}
