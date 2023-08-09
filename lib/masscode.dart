import 'package:flutter/material.dart';
import 'package:masscode/widget/pending_request.dart';
import 'package:masscode/widget/testing.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(100, 241, 244, 248),

//--------------------------------APP BAR --------------------------------
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            iconSize: 35,
            icon: Icon(
              Icons.chevron_left_rounded,
              color: Colors.black,
            ),
            onPressed: () => MainPage(),
          ),
          //Change when setup backend
          title: Text(
            'Hello, Muhammad !',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Readex Pro',
              fontSize: 20,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 25, 5),
              child: Container(
                width: 50,
                height: 50,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                //Change when setup backend
                child: Image.asset(
                  'assets/profile_picture.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),

        //------------------------------BODY--------------------------------------//
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: DefaultTabController(
                      length: 3,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: TabBar(
                              labelColor: Color(0xFF1F86D1),
                              unselectedLabelColor: Colors.grey,
                              labelStyle: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 13,
                              ),
                              tabs: [
                                Tab(
                                  text: 'Annual Leave',
                                ),
                                Tab(
                                  text: 'Sick Leave',
                                ),
                                Tab(
                                  text: 'Hospitalization',
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              child: TabBarView(
                            children: [
                              //Tabview 1
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 200,
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
                                                width: 200,
                                                height: 200,
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth: 20,
                                                  value: 0.5,
                                                  backgroundColor: Colors.white,
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(Colors.green),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                left: 0,
                                                right: 0,
                                                top: 90,
                                                child: Text(
                                                  '7 Days ',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'Outfit',
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    //Change when setup backend
                                    children: [
                                      Text(
                                        'Balance : 10/15',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),

                              //Tabview 2
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 100,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 200,
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
                                                width: 200,
                                                height: 200,
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth: 20,
                                                  value: 0.5,
                                                  backgroundColor: Colors.red,
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(Colors.green),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                left: 0,
                                                right: 0,
                                                top: 90,
                                                child: Text(
                                                  '7 Days',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'Outfit',
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    //Change when setup backend
                                    children: [
                                      Text(
                                        'Balance : 10/15',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              //Tabview 3
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 200,
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
                                                width: 200,
                                                height: 200,
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth: 20,
                                                  value: 0.5,
                                                  backgroundColor: Colors.red,
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(Colors.green),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                left: 0,
                                                right: 0,
                                                top: 90,
                                                child: Text(
                                                  '7 Days',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'Outfit',
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    //Change when setup backend
                                    children: [
                                      Text(
                                        'Balance : 10/15',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: Row(
                              children: [
                                Text("Pending",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Readex Pro',
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: PendingRequest(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Row(
                          //   children: [
                          //     Expanded(
                          //       child: Column(
                          //         children: [
                          //           Padding(
                          //             padding: EdgeInsetsDirectional.fromSTEB(
                          //                 15, 15, 15, 10),
                          //             child: Container(
                          //               width:
                          //                   MediaQuery.of(context).size.width,
                          //               height: 100,
                          //               color: Colors.orange,
                          //             ),
                          //           ),
                          //           Container(
                          //             width: MediaQuery.of(context).size.width,
                          //             height: 100,
                          //             color: Colors.orange,
                          //           ),
                          //         ],
                          //       ),
                          //     )
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ))
                ],
              ))
            ],
          ),
        ));
  }
}
