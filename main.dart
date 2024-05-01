import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [

            Container(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return ClipOval(
                    child: Image.network(
                      'https://i.postimg.cc/Vvy7WXvW/433105573-1316734702338335-5163829801446386121-n.jpg',
                      width: constraints.maxWidth * 0.4,
                      height: constraints.maxWidth * 0.4,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height/40,
            ),

            const Column(
              children: [

                Text("Shafayat Hossain Chowdhury",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),

                Text("wajid567765@gmail.com",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),

                Padding(
                    padding: EdgeInsets.all(30),
                    child: Text("Meet Shafayat, an aspiring Flutter developer eager to dive into the world of mobile app development. With a passion for innovation and a thirst for learning, I'm embarking on an exciting journey to master Flutter—a versatile framework for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Armed with determination and a knack for problem-solving, I'm poised to make waves in the ever-evolving realm of technology."))

              ],
            ),


          ],
        ),
      ),


    );
  }
}