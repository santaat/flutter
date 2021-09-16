import 'dart:html';

import 'package:flutter/material.dart';
import 'package:work2/config/constant.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password, chkpassword;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurName(),
                txtEmail(),
                txtPassword(),
                txConfirmPassword(),
                btnSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 10, 15),
      child: TextFormField(
        style: TextStyle(fontSize: 24, color: tColor),
        decoration: InputDecoration(
          labelText: 'Name',
          icon: Icon(
            Icons.account_circle,
          ),
          hintText: 'input your name',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Enter your name.';
          }
        },
        onSaved: (value) {
          name = value;
        },
      ),
    );
  }

  Widget txtSurName() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 10, 15),
      child: TextFormField(
          style: TextStyle(fontSize: 24, color: pColor),
          decoration: InputDecoration(
            labelText: 'Surname',
            icon: Icon(
              Icons.airline_seat_flat_outlined,
            ),
            hintText: 'input your Surname',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'กรุณากรอกนามสกุล';
            }
          },
          onSaved: (value) {
            surname = value;
          }),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 10, 15),
      child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(fontSize: 24, color: pColor),
          decoration: InputDecoration(
            labelText: 'Email',
            icon: Icon(
              Icons.mail_outline,
            ),
            hintText: 'input your Email',
          ),
          validator: (value) {
            if (!(value!.contains('@'))) {
              return 'Enter your Email';
            }
          },
          onSaved: (value) {
            email = value!.trim();
          }),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 10, 15),
      child: TextFormField(
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
        style: TextStyle(fontSize: 24, color: pColor),
        decoration: InputDecoration(
          labelText: 'Password',
          icon: Icon(
            Icons.password,
          ),
          hintText: 'input your Password',
        ),
        validator: (value) {
          chkpassword = value;
          if (value!.isEmpty) {
            return 'Enter Password.';
          }
        },
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }

  Widget txConfirmPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 10, 15),
      child: TextFormField(
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
        style: TextStyle(fontSize: 24, color: pColor),
        decoration: InputDecoration(
          labelText: 'Confirm Password',
          icon: Icon(
            Icons.password,
          ),
          hintText: 'input your Password',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Re-Enter New Password';
          } else if (value != chkpassword) {
            return 'Password must ne same as above';
          } else {
            return null;
          }
        },
      ),
    );
  }

  Widget btnSubmit() => ElevatedButton(
        style: ElevatedButton.styleFrom(primary: pColor),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            print(
                "name: $name surname: $surname Email: $email password: $password");
            formKey.currentState!.reset();
          }
        },
        child: Text('Submit'),
      );
}
