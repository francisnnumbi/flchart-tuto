import 'package:flchart_tuto/app/ui/line_chart/line_chart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black12,
      appBar: AppBar(
backgroundColor: Colors.black12,
        title: const Text("Home Screen", style: TextStyle(color: Colors.white,),),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
             const Text(
              'You have pushed the button this many times:', style: TextStyle(color: Colors.white,)
            ),
          const  SizedBox(height: 20,),
            ListTile(
              tileColor: Colors.white,
              leading: const Icon(Icons.show_chart),
              title: const Text("LineChart"),
              subtitle: const Text("LineChart Screen"),
              onTap: () {
               Get.to(() => const LineChartScreen());
              },
            ),

          ],
        ),
      ),

    );
  }
}