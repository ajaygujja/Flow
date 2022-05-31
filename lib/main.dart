import 'package:flow/controllers/app_controller.dart';
import 'package:flow/di/binding.dart';
import 'package:flow/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'repository/api_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: AppBinding(),
      // home: MyHomePage(
      //   title: 'Flutter Demo Home Page',
      //   apiRepository: ApiRepository.getInstance(),
      // ),
      home: const HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.apiRepository})
      : super(key: key);

  final String title;
  final ApiRepository apiRepository;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  final controller = Get.find<AppController>();

  Future<void> _incrementCounter() async {
    controller.getUserFeelings();
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Obx(() {
          if (controller.isLoading) {
            return const CircularProgressIndicator();
          }
          if (controller.exceptions?.isNotEmpty ?? false) {
            return Text(controller.exceptions.toString());
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
