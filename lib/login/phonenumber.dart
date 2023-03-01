// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  static String verify = '';

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  TextEditingController countrycode = TextEditingController();

  var phone = '';

  @override
  void initState() {
    countrycode.text = '+91';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      //   centerTitle: true,
      // ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/mobotp1.png',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Phone Verification',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(children: [
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 35,
                  child: TextField(
                    controller: countrycode,
                    readOnly: true,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {
                      phone = value;
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Enter Number"),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: countrycode.text + phone,
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {
                      PhoneNumber.verify = verificationId;
                      Navigator.pushNamed(context, 'verify');
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                  //Navigator.pushNamed(context, 'verify');
                },
                child: Text('Send OTP'))
          ]),
        ),
      ),
    );
  }
}
