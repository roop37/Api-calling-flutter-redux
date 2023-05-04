import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("PROFILE"),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.black),

        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height*0.15,
              child: Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: MediaQuery.of(context).size.width,
                  child: CircleAvatar(
                    child: Image.asset('image/av.png'),)),),
            Positioned(
              top: MediaQuery.of(context).size.height*0.37,
              child: Container(
                width: MediaQuery.of(context).size.width*1,
                child: Center(
                    child: Text("Profile ID",style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)
                ),
              ),
            ),

            Positioned(bottom: MediaQuery.of(context).size.height*0.4,
                left: 20,
                child: Row(
                  children: [
                    Text("Name :  ",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("Full Name",style: TextStyle(color:Colors.white,fontSize: 18),),
                  ],
                )),
            Positioned(bottom: MediaQuery.of(context).size.height*0.35,
                left: 20,
                child: Row(
                  children: [
                    Text("Email :  ",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("Email Address",style: TextStyle(color:Colors.white,fontSize: 18),),
                  ],
                )),
            Positioned(

                bottom: 20,
                child:Container(
                  height: 100,
                  width: 200,
                  child: Center(
                    child: TextField(
                      onChanged: (value) {
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter ID',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                )

            )
          ],
        ),

      ),
    );

  }
}