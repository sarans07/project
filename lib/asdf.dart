import 'package:flutter/material.dart';


class asdfgh extends StatefulWidget {
  const asdfgh({super.key});

  @override
  State<asdfgh> createState() => _asdfghState();
}

class _asdfghState extends State<asdfgh> {

  final ctrl = TextEditingController();
  String num1="",num2="",optr="";
  bool clk =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(controller: ctrl,),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(onPressed: (){
              if(clk)
                {
                  num2="1";
                  ctrl.text= num2;
                }
              else
                {
                  num1="1";
                  ctrl.text= num1;
                }

            }, child: Text("1")),
            ElevatedButton(onPressed: (){
              if(clk)
              {
                num2="2";
                ctrl.text= num2;
              }
              else
              {
                num1="2";
                ctrl.text= num1;
              }
            }, child: Text("2")),
            ElevatedButton(onPressed: (){
              ctrl.text= "+";
              optr= "+";
              clk =true;

            }, child: Text("+")),
            ElevatedButton(onPressed: (){
              if(optr== "+")
                {
                  int res =int.parse(num1)+int.parse(num2);

                  ctrl.text = res.toString();
                }
            }, child: Text("=")),
          ],)
        ],
      ),
    );
  }
}
