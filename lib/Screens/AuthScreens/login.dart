import 'package:flutter/material.dart';
import 'package:clean_city/Styles/colors.dart';


import 'package:flutter/material.dart';
// import 'Styles/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
 
  @override
  State<Login> createState() => _LoginState();
}
 
class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkvalue = false;
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          
          child: Image.asset("assets/images/login_pic.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,),
        ),
        Positioned(
          top: 250,
          left: 20,
          child: Container(
            
            child: Text("Welcome!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            ),
          ),
        ),
        // SizedBox(height: 10,),
        Positioned(
          top: 280,
          left: 20,
          child: Container(
            
            child: Text("Log into your account to continue",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            ),
          ),),
        Positioned(
          top: 320,
          // right: 0,
          child: Container(
            width: 360,
            height: 480,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                        child: const Text('Email Address'),
                      ),
                      SizedBox(
                        height: 55,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            obscureText: false,
                            controller: passwordController,
                            decoration:  InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              hintText: 'Enter email address',
                            ),
                          ),
                        ),
                      ),
            
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: const Text('Password'),
                      ),
                      SizedBox(
                        height: 55,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            obscureText: true,
                            controller: passwordController,
                            decoration:  InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              hintText: 'Enter password',
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: 20,),
                      Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 1,
                                ),
                                 Checkbox(
                                  value: this.checkvalue,

                                  activeColor: Color(0xFF2D5746),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      this.checkvalue = value!;
                                    });
                                  },
                                ),
                                //SizedBox
                                Text(
                                  'keep me signed In',
                                  style: TextStyle(fontSize: 12.0),
                                ), //Text
                                SizedBox(width: 100), 
                                //SizedBox
                                Text('Forgot Password?',
                                style: TextStyle(color: Color(0xFF0C4B18),
                                fontSize: 12.0, 
                                ))
                              ], //<Widget>[]
                            ),
                      SizedBox(height: 10,),

          Container(
                          height: 40,
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            child: const Text('Login',
                            style: TextStyle(
                              fontSize: 17,
                            ),),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                            ),
                          )
                      ),
        
                      SizedBox(height: 90,),
                      Row(
                        children: <Widget>[
                          const Text("I don't have an account."),
                          TextButton(
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(fontSize: 15, color: Color(0xFF0C4B18)),
                              
                            ),
                            onPressed: () {
                              //Signup page
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      SizedBox(height: 5,),
              ],
              ))),
        )]);
  }
}