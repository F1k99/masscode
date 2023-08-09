import 'package:flutter/material.dart';

class PendingRequest extends StatefulWidget {
  const PendingRequest({super.key});

  @override
  State<PendingRequest> createState() => _PendingRequestState();
}

class _PendingRequestState extends State<PendingRequest> {
  List<String> titlesArray = [
    "Item 1",
    "Item 2",
  ];

  List<String> subtitlesArray = [
    "Testing 1",
    "Testing 2",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
      child: Row(
        children: [
          Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: titlesArray.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Colors.white,
                    title: Text(
                      titlesArray[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sans",
                      ),
                    ),
                    subtitle: Text(
                      subtitlesArray[index],
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sans",
                      ),
                    ),
                    trailing: Text(
                      "Testing",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Sans",
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
