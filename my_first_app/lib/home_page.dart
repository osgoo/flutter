// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // const HomePage({super.key});
//   String title = "Initial";

//   void setTitle(){
//     setState(() {
//       title = "Uurchlugduv";
//     });
//     print(title);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(title),
//             ElevatedButton(
//               onPressed: setTitle,
//               child: Text("Uurchluh"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Statless Widget -> uuruu uuriiguu re render buyu dahin renderledeh bolomjgui
// // Statefil Widget -> re render hiih bolomjtoi

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const Homepage({super.key});

  // Text text = Text("ene bol String");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Padding(
      //   // padding: EdgeInsets.fromLTRB(2, 50, 100, 20),
      //   // padding: EdgeInsets.only(top: 50, left: 20),
      //   padding: EdgeInsets.symmetric(vertical:30, horizontal: 40),
      //   child: Text(
        body: Center( 
          child: Container(
            color: Colors.blue,
            // alignment: Alignment.bottomCenter,
            // constraints: BoxConstraints(
            //   maxHeight: 100,
            //   maxWidth: 100,
            // ),
            // margin: EdgeInsets.only(bottom: 150),
            // padding: EdgeInsets.only(bottom: 50),
            // transform: Matrix4.rotationY(20),
            
            // decoration: BoxDecoration(
            //   // color: Colors.amber,
            //   // borderRadius: BorderRadius.all(Radius.circular(50)),
            //   // borderRadius: BorderRadius.circular(50),
            //   // borderRadius: BorderRadius.horizontal(
            //   //   left: Radius.circular(10),
            //   //   right: Radius.elliptical(10, 50),
            //   // ),
            //   // borderRadius: BorderRadius.only(
            //   //   bottomLeft: Radius.circular(50),
            //   //   bottomRight: Radius.circular(50),
            //   // ),
            //   // border: Border.all(
            //   //   color: Colors.black,
            //   //   width: 2,
            //   //   style: BorderStyle.solid,
            //   // border: Border(bottom: BorderSide(color: Colors.black))
            //   // ),
            //   // boxShadow: [
            //   //   BoxShadow(
            //   //     color: Colors.black,
            //   //     offset: Offset(10, 10),
            //   //     blurRadius: 20,
            //   //     // blurStyle: BlurStyle.solid,
            //   //     spreadRadius: 20,
            //   //   )
            //   // ]
            //   // gradient: LinearGradient(
            //   //   colors: [Colors.black, Colors.red, Colors.blue],
            //   //   begin: Alignment.topLeft,
            //   //   end: Alignment.center,
            //   //   tileMode: TileMode.mirror,
            //   // ),
            //   // image: DecorationImage(image: AssetImage("")),
            //   image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"),
            //   opacity: 0.5,
            //   ),
            // ),
            child: Text(
            "Ene bol stringsdvfdvxcvxcvcx gdf  ds  gsdfgsd fg ",
            // maxLines: 1,
            style: TextStyle(
                // backgroundColor: Colors.amberAccent,
                // color: Colors.blueAccent,
                // decoration: TextDecoration.underline,
                // decorationColor: Colors.green,
                // decorationThickness: 10,
                // decorationStyle: TextDecorationStyle.wavy,
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                // wordSpacing: 10,
                // height: 5,
                // overflow: TextOverflow.ellipsis,

              ),
              // textAlign: TextAlign.center,
            ),
          ),
      ),
    );
  }
}
