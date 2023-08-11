import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class RequestLeave extends StatefulWidget {
  const RequestLeave({super.key});

  @override
  State<RequestLeave> createState() => _RequestLeaveState();
}

class _RequestLeaveState extends State<RequestLeave> {
  //dropdown
  List<String> leaveTypeItem = [
    "Annual Leave",
    "Sick Leave",
    "Hospitalization",
  ];

  String? selectedValue;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Request Leave",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    //Dropdown Button
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
                        child: DropdownButtonFormField2<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // Add more decoration..
                          ),
                          hint: const Text(
                            'Please Select ...',
                            style: TextStyle(fontSize: 14),
                          ),
                          items: leaveTypeItem
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select ....';
                            }
                            return null;
                          },
                          onChanged: (value) {},
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.only(right: 8),
                          ),
                          iconStyleData: const IconStyleData(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black45,
                            ),
                            iconSize: 24,
                          ),
                          dropdownStyleData: DropdownStyleData(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
