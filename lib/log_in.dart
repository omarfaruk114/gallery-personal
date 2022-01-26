import 'package:galleryapp/custom_button.dart';
import 'package:galleryapp/custom_text_field.dart';
import 'package:galleryapp/home_page.dart';
import 'package:galleryapp/all_color.dart';
import 'package:flutter/material.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}
final GlobalKey<FormState> _formKey=GlobalKey();
TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();

AllColor allColor = AllColor();
TextEditingController _emailControllerr=TextEditingController();
TextEditingController _passControllerr=TextEditingController();
class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Icon(Icons.volunteer_activism,
              size: 100,color: allColor.appColor,),
            SizedBox(
              height: 80,
            ),
            CustomTextField(
              hintText: "Enter Your Email",
              labelText: "Email",
              controller: _emailController,
              obsecureVal: false,
            ),
            SizedBox(
              height: 15,

            ),
            CustomTextField(
              hintText: "Enter Your Password",
              labelText: "Password",
              controller: _passController,
              obsecureVal: true,
            ),
            SizedBox(
              height: 15,

            ),
            InkWell(
              onTap :(){
                if(_formKey.currentState!.validate())
                {
                  if(_emailController.text=="omarfaruk119810@gmail.com"&&
                      _passController.text=="cute boy")
                    Navigator.push(context, MaterialPageRoute
                      (builder: (context)=>HomePage()));
                }
              },
              child: CustomButton(
                  height :60,
                  width: 300,
                  btnText :"LOG IN"
              ),
            ),
            SizedBox(
              height: 15,
            ),

          ],
        ),
      ),
    );
  }
}
