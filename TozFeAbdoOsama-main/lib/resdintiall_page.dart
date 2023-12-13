import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ResdintiallPage extends StatefulWidget {
  ResdintiallPage({super.key});

  final typeController = TextEditingController();
  final statusController = TextEditingController();
  final propertyAdressController = TextEditingController();
  final priceController = TextEditingController();
  final phoneController = TextEditingController();
  final detailsController = TextEditingController();
  final rentDurationController = TextEditingController();

  @override
  State<ResdintiallPage> createState() => _ResdintiallPageState();
}
  GlobalKey<FormState> _formState=GlobalKey();
String type = "";
String status = "";
String rentduration = "";

class _ResdintiallPageState extends State<ResdintiallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(0, 206, 25, 25),
        title: Text(
          'Add Residential Property ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: _formState ,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      " Type  ",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                DropdownButtonFormField(
                  validator: (value) {
                    if(value==null)
                    return 'You must choose one';
                  },
                  items: [
                    DropdownMenuItem(
                      value: 'Apartment ',
                      child: Text('Apartment'),
                    ),
                    DropdownMenuItem(
                      value: 'Floor',
                      child: Text('Floor'),
                    ),
                    DropdownMenuItem(
                      value: 'House',
                      child: Text('House'),
                    ),
                    DropdownMenuItem(
                      value: 'Building',
                      child: Text('Building'),
                    ),
                    DropdownMenuItem(
                      value: 'Land',
                      child: Text('Land'),
                    ),
                  ],
                  onChanged: (value) {
                    type=value.toString();
                    print(type);  
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
                    validator: (value) {
                    if(value==null)
                    return 'You must choose one';
                  },
                  onSaved: (newValue) {
                    if (newValue != null) {
                      status = newValue;
                      print('This is the Second one +++++++ $newValue');
                    }
                  },
                  items: [
                    DropdownMenuItem(
                      value: 'Rent',
                      child: Text('Rent'),
                    ),
                    DropdownMenuItem(
                      value: 'Sale',
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
                  validator: (value) {
                    if(value!.isEmpty)
                    return 'You must choose one';
                  },
                  controller: widget.propertyAdressController,
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
                TextFormField(
                  validator: (value) {  
                    if(value!.isEmpty)
                    return 'You must choose one';
                  },
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
                  validator: (value) {
                    if(value!.isEmpty)
                    return 'You must choose one';
                  },
                  controller: widget.phoneController,
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
                      "More details",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty)
                    return 'You must choose one';
                  },
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
                  validator: (value) {
                    if(value==null)
                    return 'You must choose one';
                  },
                  onSaved: (newValue) {
                    if (newValue != null) {
                      rentduration = newValue;
                    }
                  },
                  items: [
                    DropdownMenuItem(
                      value: '1',
                      child: Text('1 Month'),
                    ),
                    DropdownMenuItem(
                      value: '2',
                      child: Text('2 Months'),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => print('Button clicked!'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(250, 129, 40, 1),
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Back'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        print(type);
                        print(status);
                        print(rentduration);
                        if(_formState.currentState!.validate()){
                        _formState.currentState!.save();
                        try {
                          CollectionReference collRef = FirebaseFirestore.instance.collection('ResidentialProperty');
                          await collRef.add({
                            'propertyType': type,
                            'propertyStatus': status,
                            'propertyAdress': widget.propertyAdressController.text,
                            'propertyPrice': widget.priceController.text,
                            'phoneNumber': widget.phoneController.text,
                            'propertyDetails': widget.detailsController.text,
                            'propertyRentDuration': rentduration,
                          });
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green,
                            content:Text('Data Added Successfuly')));
                          // Add any further navigation logic or success messages here
                        } catch (e) {
                          print('Error adding data to Firestore: $e');
                          // Handle the error (e.g., show an error message)
                        }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(250, 129, 40, 1),
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Next'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
