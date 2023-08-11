import 'package:flutter/material.dart';
import 'package:masscode/widget/history.dart';
import 'package:masscode/widget/history_android.dart';
import 'package:masscode/widget/pending_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:masscode/widget/pending_request_android.dart';
import 'package:masscode/widget/requestLeaveWidget.dart';

class MainPageAndroid extends StatefulWidget {
  const MainPageAndroid({super.key});

  @override
  State<MainPageAndroid> createState() => _MainPageAndroidState();
}

class _MainPageAndroidState extends State<MainPageAndroid> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context),
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 241, 244, 250),

          //--------------------------------APP BAR --------------------------------
          appBar: AppBar(
            backgroundColor: Color.fromARGB(500, 241, 244, 250),
            automaticallyImplyLeading: false,
            leading: IconButton(
              iconSize: 35,
              icon: Icon(
                Icons.chevron_left_rounded,
                color: Color.fromARGB(200, 20, 24, 27),
              ),
              onPressed: () => MainPageAndroid(),
            ),
            //Change when setup backend
            title: Text(
              'Hello, Masscoder !',
              style: TextStyle(
                  color: Color.fromARGB(200, 20, 24, 27),
                  fontFamily: 'Readex Pro',
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
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
                                labelColor: Color.fromARGB(500, 75, 57, 239),
                                unselectedLabelColor: Colors.grey,
                                labelStyle: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                tabs: [
                                  Tab(
                                    text: 'Annual Leave',
                                  ),
                                  Tab(
                                    text: 'Sick Leave',
                                  ),
                                  Tab(
                                    text: 'Hospitalisation',
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: TabBarView(
                              children: [
                                // Tabview 1
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
                                          Stack(
                                            children: <Widget>[
                                              Container(
                                                width: 140,
                                                height: 140,
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth: 15,
                                                  value: 3 / 14,
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
                                                top: 55,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Annual Leave",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: 'Outfit',
                                                        color: Color.fromARGB(
                                                            500, 20, 24, 27),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      '11 Days ',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Outfit',
                                                        color: Color.fromARGB(
                                                            500, 20, 24, 27),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      //Change when setup backend
                                      children: [
                                        Text(
                                          'Balance : 11/14',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Readex Pro',
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),

                                // Tabview 2
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
                                          Stack(
                                            children: <Widget>[
                                              Container(
                                                width: 140,
                                                height: 140,
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth: 15,
                                                  value: 5 / 20,
                                                  backgroundColor: Colors.white,
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(Colors.red),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                left: 0,
                                                right: 0,
                                                top: 55,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Sick Leave",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: 'Outfit',
                                                        color: Color.fromARGB(
                                                            500, 20, 24, 27),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      '15 Days ',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Outfit',
                                                        color: Color.fromARGB(
                                                            500, 20, 24, 27),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      //Change when setup backend
                                      children: [
                                        Text(
                                          'Balance : 15/20',
                                          style: TextStyle(
                                            fontSize: 14,
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
                                          Stack(
                                            children: <Widget>[
                                              Container(
                                                width: 140,
                                                height: 140,
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth: 15,
                                                  value: 5 / 60,
                                                  backgroundColor: Colors.white,
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(Colors.yellow),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                left: 0,
                                                right: 0,
                                                top: 55,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Hospitalisation",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: 'Outfit',
                                                        color: Color.fromARGB(
                                                            500, 20, 24, 27),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      '55 Days ',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Outfit',
                                                        color: Color.fromARGB(
                                                            500, 20, 24, 27),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      //Change when setup backend
                                      children: [
                                        Text(
                                          'Balance : 55/60',
                                          style: TextStyle(
                                            fontSize: 14,
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
                              padding: const EdgeInsets.fromLTRB(50, 10, 5, 0),
                              child: Row(
                                children: [
                                  Text("Pending",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Readex Pro',
                                        color: Color.fromARGB(500, 87, 99, 108),
                                        fontWeight: FontWeight.bold,
                                      ))
                                ],
                              ),
                            ),
                            Row(
                              children: [PendingRequestAndroid()],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(50, 0, 0, 5),
                                    child: Text("History",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Readex Pro',
                                          color:
                                              Color.fromARGB(500, 87, 99, 108),
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                                  child: Text("Show all",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'Readex Pro',
                                        color: Color.fromARGB(500, 87, 99, 108),
                                        fontWeight: FontWeight.bold,
                                      )),
                                )
                              ],
                            ),
                            Row(
                              children: [LeaveHistoryAndroid()],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                                child: FloatingActionButton.extended(
                                  onPressed: () async {
                                    // await showModalBottomSheet(
                                    //     context: context,
                                    //     isScrollControlled: true,
                                    //     backgroundColor: Colors.transparent,
                                    //     builder: (context) {
                                    //       return RequestLeave();
                                    //     }).then((value) => setState(() {}));
                                  },
                                  label: Text(
                                    "Request Leave",
                                    style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  ),
                                  backgroundColor:
                                      Color.fromARGB(500, 75, 57, 239),
                                  elevation: 18,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20), // Adjust the radius as per your requirements
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
