// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//    home: StartPage(),
//     );
//   }
// }
//
// class StartPage extends StatefulWidget {
//   const StartPage({Key? key}) : super(key: key);
//
//   @override
//   State<StartPage> createState() => _StartPageState();
// }
//
// class _StartPageState extends State<StartPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//      body: Center(
//        child: Padding(padding: EdgeInsets.zero,
//
//        child: Column(
//          children: [
//            const Text(" SaveChildren Tanzania ",
//              style: TextStyle(
//                  fontSize: 19,
//                  color: Color.fromARGB(255, 35, 76, 110),
//                  fontWeight: FontWeight.bold,
//                  letterSpacing: 4,
//                  height: 2
//              ),),
//            const SizedBox(height: 15,),
//            Image.asset("assets/images/child.jpg",
//              height: 150.0,
//              width: 200.0,),
//            const SizedBox(height: 15,),
//            const Text("Login",
//              style: TextStyle(
//                fontWeight: FontWeight.bold,
//                fontSize: 19.0,
//                letterSpacing: 3,
//                color: Color.fromARGB(255, 35, 76, 110),
//              ),),
//            Container(
//              margin: const EdgeInsets.only(left: 580.0, right: 500.0,top: 40.0),
//              padding: const EdgeInsets.only(left: 580.0, right: 500.0),
//              decoration:BoxDecoration(
//                  borderRadius: BorderRadius.circular(50.0),
//                  color:Colors.grey[300],
//                  boxShadow:  const [
//                    BoxShadow(
//                        offset: Offset(0.0,10.0),
//                        blurRadius: 50.0,
//                        color: Colors.white
//                    )
//                  ]
//              ),
//              alignment: Alignment.center,
//              child: TextFormField(
//                cursorColor: Colors.white,
//                decoration: const InputDecoration(
//                  prefixIcon: Icon(
//                    Icons.email_outlined,
//                    color: Color.fromARGB(255, 35, 76, 110),
//                  ),
//                  hintText: " Enter email",
//                  enabledBorder: InputBorder.none,
//                  focusedBorder: InputBorder.none,
//                ),
//              ),
//            ),
//
//            Container(
//              // margin: const EdgeInsets.only(left: 20.0, right: 20.0,top: 20.0),
//              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
//              decoration:BoxDecoration(
//                  borderRadius: BorderRadius.circular(50.0),
//                  color:Colors.grey[300],
//                  boxShadow: const [BoxShadow(
//                      offset: Offset(0.0,10.0),
//                      blurRadius: 50.0,
//                      color: Colors.white
//                  )
//                  ]
//              ),
//              alignment: Alignment.center,
//              child:  TextField(
//                //for  connection to database
//                obscureText: true,
//                cursorColor: Colors.white,
//                decoration: const InputDecoration(
//                  prefixIcon: Icon(
//                    Icons.vpn_key,
//                    color: Color.fromARGB(255, 35, 76, 110),
//                  ),
//                  hintText: " Enter Password",
//                  enabledBorder: InputBorder.none,
//                  focusedBorder: InputBorder.none,
//                ),
//              ),
//            ),
//
//            Container(
//              margin: const EdgeInsets.only(top: 20.0,right: 30.0),
//              alignment: Alignment.bottomRight,
//              child: GestureDetector(
//                child: const Text("Forgot Password?",
//                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color.fromARGB(255, 35, 76, 110),),),
//                onTap: ()=> {},
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 5),
//              child: MaterialButton(
//                minWidth: double.infinity,
//                height:50,
//                onPressed: (){
//
//                },
//                color: const Color.fromARGB(255, 35, 76, 110),
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(40)
//                ),
//                child: const Text("Login",
//                  style: TextStyle(
//                      fontWeight: FontWeight.w600,fontSize: 15,color: Colors.white70
//                  ),),
//              ),
//            ),
//          ],
//        ),),
//      ),
//     ));
//   }
// }
import 'package:admin_web/screens/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      initialRoute: "/",
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
   Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: Padding(
        padding: EdgeInsets.only(left: 100,top: 90),
        child: Body(),
      )
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Container(
        //   width: 360,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         'Sign In to \nMy Application',
        //         style: TextStyle(
        //           fontSize: 45,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       SizedBox(
        //         height: 30,
        //       ),
        //       Text(
        //         "If you don't have an account",
        //         style: TextStyle(
        //             color: Colors.black54, fontWeight: FontWeight.bold),
        //       ),
        //       SizedBox(
        //         height: 10,
        //       ),
        //       Row(
        //         children: [
        //           Text(
        //             "You can",
        //             style: TextStyle(
        //                 color: Colors.black54, fontWeight: FontWeight.bold),
        //           ),
        //           SizedBox(width: 15),
        //           GestureDetector(
        //             onTap: () {
        //               print(MediaQuery.of(context).size.width);
        //             },
        //             child: Text(
        //               "Register here!",
        //               style: TextStyle(
        //                   color: Colors.deepPurple,
        //                   fontWeight: FontWeight.bold),
        //             ),
        //           ),
        //         ],
        //       ),
        //       Image.asset(
        //         'assets/images/web1.png',
        //         width: 300,
        //       ),
        //     ],
        //   ),
        // ),

        // Image.asset(
        //   'assets/images/web1.png',
        //   width: 300,
        // ),
        // MediaQuery.of(context).size.width >= 1300 //Responsive
        //     ? Image.asset(
        //         'images/illustration-1.png',
        //         width: 300,
        //       )
        //     : SizedBox(),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 6),
          child: Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(10.0),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Color.fromARGB(255, 35, 76, 110)),
            // ),
            width: 320,
            child: _formLogin(),
          ),
        )
      ],
    );
  }

  Widget _formLogin() {
    return Expanded(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter email ',
                filled: true,
                fillColor: Colors.blueGrey[50],
                prefixIcon:   Icon(Icons.mail),
                labelStyle: TextStyle(fontSize: 12),
                contentPadding: EdgeInsets.only(left: 30),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey.shade50),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey.shade50),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                // counterText: 'Forgot password?',
                prefixIcon:   Icon(Icons.vpn_key),
                // suffixIcon: Icon(
                //   Icons.visibility_off_outlined,
                //   color: Colors.grey,
                // ),
                filled: true,
                fillColor: Colors.blueGrey.shade50,
                labelStyle: TextStyle(fontSize: 12),
                contentPadding: EdgeInsets.only(left: 30),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey.shade50),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey.shade50),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.shade100,
                    spreadRadius: 10,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: ElevatedButton(
                child: Container(
                    width: double.infinity,
                    height: 50,
                    child: Center(child: Text("Sign In"))),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 35, 76, 110),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ), onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute( builder: (_) => HomeScreen() ) );
              },
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // Widget _loginWithButton({required String image, bool isActive = false}) {
  //   return Container(
  //     width: 90,
  //     height: 70,
  //     decoration: isActive
  //         ? BoxDecoration(
  //       color: Colors.white,
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.grey.shade300,
  //           spreadRadius: 10,
  //           blurRadius: 30,
  //         )
  //       ],
  //       borderRadius: BorderRadius.circular(15),
  //     )
  //         : BoxDecoration(
  //       borderRadius: BorderRadius.circular(15),
  //       border: Border.all(color: Colors.grey.shade400),
  //     ),
  //     child: Center(
  //         child: Container(
  //           decoration: isActive
  //               ? BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.circular(35),
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.grey.shade50,
  //                 spreadRadius: 2,
  //                 blurRadius: 15,
  //               )
  //             ],
  //           )
  //               : BoxDecoration(),
  //           child: Image.asset(
  //             'assets/images/web1.png',
  //             width: 35,
  //           ),
  //         )),
  //   );
  // }
}