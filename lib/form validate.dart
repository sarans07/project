import 'package:flutter/material.dart';
class project1 extends StatelessWidget {
  final _formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Form(
        key: _formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  labelText: "E-Mail",
                  labelStyle: TextStyle(fontSize: 20),
                ),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {

                },
                  validator: (value){
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                    return 'Enter the valid E-Mail!';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  labelText: "Name",
                  labelStyle: TextStyle(fontSize: 20),
                ),
                keyboardType: TextInputType.text,
                onFieldSubmitted: (value){

                },
                validator: (value) {
                  if (value == null ||value.length<2||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  labelText: "Phone Number",
                  labelStyle: TextStyle(fontSize: 20),
                ),
               keyboardType: TextInputType.phone,
                onFieldSubmitted: (value){

                },
                validator: (value){
                 if (value == null|| value.isEmpty||value.length<10||value.length>10) {
                  return 'Please enter valid phone number';
                 }
                 return null;
                 },
              ),
              ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 20),
                ),
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value) {

                },
                validator: (value){
                  if (value!.isEmpty||value.length<4){
                    return 'Enter the valid Password';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              if(_formkey.currentState!.validate());
            }, child: Icon(Icons.login)),
          ],
        ),
      ),
    );
  }
}
