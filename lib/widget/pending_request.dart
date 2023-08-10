import 'package:flutter/material.dart';

class PendingRequest extends StatefulWidget {
  const PendingRequest({super.key});

  @override
  State<PendingRequest> createState() => _PendingRequestState();
}

class _PendingRequestState extends State<PendingRequest> {
  List<String> leaveTypeArray = [
    "Annual Leave",
    "Sick Leave",
  ];

  List<String> dateArray = [
    "10/8/2023 - 11/8/2023",
    "13/8/2023 - 15/8/2023",
  ];

  List<String> daysArray = [
    "3 Days",
    "2 Days",
  ];
  List<String> statusArray = [
    "Pending",
    "Pending",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Row(
        children: [
          Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: leaveTypeArray.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 15),
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                          ),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                  width: 15,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      leaveTypeArray[index],
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      dateArray[index],
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    daysArray[index],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  statusArray[index],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromARGB(200, 87, 99, 108),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
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
