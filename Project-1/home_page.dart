import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextEditingController t1;
  final TextEditingController t2;
  final String msg;
  final VoidCallback doSum;
  const HomePage({
    Key? key,
    required this.t1,
    required this.t2,
    required this.msg,
    required this.doSum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sum Application"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          TextField(controller: t1),
          TextField(controller: t2),
          ElevatedButton(onPressed: doSum, child: Text("Addition")),
          Text(msg),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/first');
            },
            child: Text("Go to First Page"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text("Go to Second Page"),
          ),
        ],
      ),
    );
  }
}
