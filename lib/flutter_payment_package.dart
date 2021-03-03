library flutter_payment_package;

import 'package:flutter/material.dart';

/// A Payment Gateway.
class Payment {
  static Future showPayment({
    @required BuildContext context,
    @required Widget willDisplayWidget,
  }) {
    assert(context != null, "context is null!!");
    assert(willDisplayWidget != null, "willDisplayWidget is null!!");
    return showDialog(
        context: context,
        builder: (context) {
          return ListView(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            shrinkWrap: true,
            children: [
              SizedBox(height: 80.0),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  child: Container(
                    height: 200.0,
                    width: double.infinity,
                    color: Colors.grey.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            initialValue: "9845012345",
                            style: TextStyle(color: Colors.white),
                            // controller: phoneController,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 25.0),
                          Text(
                            "Password",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            initialValue: "12345",
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            //  controller: passwordController,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/payment_page");
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
