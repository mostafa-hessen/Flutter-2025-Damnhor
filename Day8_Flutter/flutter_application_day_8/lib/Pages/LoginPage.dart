import 'package:flutter/material.dart';
import 'package:flutter_application_day_6/Pages/HomePage.dart';
import 'package:flutter_application_day_6/util/Common.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TextFieldCompnent();
}

class TextFieldCompnent extends State<Loginpage> {
  GlobalKey<FormState> formState = GlobalKey();

  String userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Texfield from statefull"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: formState,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                
                  onSaved: (val) {
                    setState(() {
                      userName = val!;
                    });
                  },

                  validator: (val) {
                    if (val == "") {
                      return "يجب ادخال قيمه في الحقل  ";
                    }
                    if (val!.length < 10) {
                      return "يجب ان تكون عدد الاحرف اكبر من 10  ";
                    }
                  },
                ),
                Gap(),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: ()async {
                    if (formState.currentState!.validate()) {
                      formState.currentState!.save();
                      print("test");

                      var pref=await  SharedPreferences.getInstance();
          
                      await  pref.setString("userName", userName);

                      print("test");
                      Navigator.of(context).pushReplacementNamed('/home');
                    }
                  },
                  child: Text("login"),
                ),

                Text("userName is $userName"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
