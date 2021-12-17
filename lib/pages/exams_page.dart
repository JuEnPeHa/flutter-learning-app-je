import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/custom_page_route.dart';
import 'package:social_network_test/pages/example_page.dart';

class ExamsPage extends StatefulWidget {
  const ExamsPage({Key? key}) : super(key: key);

  @override
  _ExamsPageState createState() => _ExamsPageState();
}

class _ExamsPageState extends State<ExamsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            FloatingActionButton(
                onPressed: () => Navigator.of(context)
                    .pop(CustomPageRoute(child: ExamplePage())),
                child: Text('1')),
            Text('Exams Page'),
            Text('Exams'),
          ],
        ),
      ),
    );
  }
}
