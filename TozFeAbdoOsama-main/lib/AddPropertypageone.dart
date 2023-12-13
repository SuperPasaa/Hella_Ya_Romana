// import 'package:abdo/AddPropertypagetwo.dart';
import 'package:abdo/AddPropertypagetwo.dart';
import 'package:abdo/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart' ;
// import 'package:cloud_firestore/cloud_firestore.dart';

class AddProOne extends StatefulWidget {
  AddProOne({super.key});
  //final propertyController = TextEditingController();
  final propertyaddressController = TextEditingController();
//  final statusController = TextEditingController();
  final priceController = TextEditingController();
  final phoneController = TextEditingController();
  final detailsController = TextEditingController();
  // final rentdurationController = Seleceted();

  @override
  State<AddProOne> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddProOne> {
  @override
  Widget build(BuildContext context) {
    var row = Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// button for next page
            Spacer(
              flex: 1,
            ),

            ElevatedButton(
              onPressed: () {
                // Execute Firestore code
                CollectionReference collRef =
                    FirebaseFirestore.instance.collection('broker');
                collRef.add({
                 // 'property': widget.propertyController.selection,
                 // 'status': widget.statusController.selection,
                  'property address': widget.propertyaddressController.text,
                  'price': widget.priceController.text,
                  'phone number': widget.phoneController.text,
                  'details': widget.detailsController.text,
                 // 'rent duration': widget.rentdurationController.selection,
                });

                // Navigate to the next screen

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(250, 129, 40, 1),
                foregroundColor: Colors.white,
              ),
              child: Text('back'),
            ),
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddProTwo(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(250, 129, 40, 1),
                foregroundColor: Colors.white,
              ),
              child: Text('next'),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(0, 206, 25, 25),
        title: Text(
          ' Property',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Property ",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                DropdownButtonFormField(
                  //value: widget.priceController.selection,
                  //  value: widget.propertyController.text,
                  // controller: widget.priceController,
                  items: [
                    DropdownMenuItem(
                      value: ('Commercial'),
                      child: Text('Commercial'),
                    ),
                    DropdownMenuItem(
                      value: ('Houses'),
                      child: Text('Houses'),
                    ),
                  ],
                  onChanged: (value) {
                    // handle onChanged
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(
                      value: ('Rent'),
                      child: Text('Rent'),
                    ),
                    DropdownMenuItem(
                      value: ('Sale'),
                      child: Text('Sale'),
                    ),
                  ],
                  onChanged: (value) {
                    // handle onChanged
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    labelText: 'States',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Property address",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    labelText: 'Property Address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                /////////////////////
                TextFormField(
                  controller: widget.priceController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    labelText: 'Price',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Phone number",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                TextFormField(
                  controller: widget.phoneController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "More details",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                TextFormField(
                  controller: widget.detailsController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Rent duration",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(
                      value: '1',
                      child: Text('1 Month'),
                    ),
                    DropdownMenuItem(
                      value: '2',
                      child: Text('2 Months'),
                    ),
                    DropdownMenuItem(
                      value: '3',
                      child: Text('3 Months'),
                    ),
                    DropdownMenuItem(
                      value: '4',
                      child: Text('4 Months'),
                    ),
                    // Add more options as needed
                  ],
                  onChanged: (value) {
                    // handle onChanged
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    labelText: 'Type',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                row,
              ],
            ),
          ),
        ),
      ),
    );
  }
}