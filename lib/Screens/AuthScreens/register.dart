import 'package:clean_city/Styles/colors.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
 
  @override
  State<Register> createState() => _RegisterState();
}
 
class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkvalue = false;
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          
          child: Image.asset("assets/images/signup_pic.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,),
        ),
        Positioned(
          top: 220,
          left: 20,
          child: Container(
            
            child: Text("Sign Up!",
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
          top: 250,
          left: 20,
          child: Container(
            
            child: Text("Create an account to get started",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            ),
          ),),
        Positioned(
          top: 290,
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
                        child: const Text('Full Names'),
                      ),
                      SizedBox(height: 55,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            obscureText: false,
                            controller: passwordController,
                            decoration:  InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              hintText: 'Enter full names',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                              hintText: 'Enter email Address',
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
                      // SizedBox(height: 1,),
                      Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 1,
                                ),
                                 Checkbox(
                                  value: this.checkvalue,

                                  activeColor: primaryColor,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      this.checkvalue = value!;
                                    });
                                  },
                                ),
                                //SizedBox
                                Text(
                                  'I agree with the terms of condition and privacy policy',
                                  style: TextStyle(fontSize: 12.0),
                                ), //Text
                              ], //<Widget>[]
                            ),
                      SizedBox(height: 10,),

          Container(
                          height: 40,
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            child: const Text('Sign Up',
                            style: TextStyle(
                              fontSize: 17,
                            ),),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                            ),
                          )
                      ),
        
                      SizedBox(height: 50,),
                      Row(
                        children: <Widget>[
                          const Text("I already have an account."),
                          TextButton(
                            child: const Text(
                              'Log In',
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
