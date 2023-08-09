import 'package:flutter/material.dart';

class PendingRequest extends StatefulWidget {
  const PendingRequest({super.key});

  @override
  State<PendingRequest> createState() => _PendingRequestState();
}

class _PendingRequestState extends State<PendingRequest> {
  @override
  Widget build(BuildContext context) {
    return (Row(
      children: [ListView()],
    ));
    // return ListView(
    //   padding: const EdgeInsets.all(8),
    //   children: <Widget>[
    //     Container(
    //       height: 50,
    //       color: Colors.amber[600],
    //       child: const Center(child: Text('Entry A')),
    //     ),
    //     Container(
    //       height: 50,
    //       color: Colors.amber[500],
    //       child: const Center(child: Text('Entry B')),
    //     ),
    //     Container(
    //       height: 50,
    //       color: Colors.amber[100],
    //       child: const Center(child: Text('Entry C')),
    //     ),
    //   ],
    // );
  }
}
