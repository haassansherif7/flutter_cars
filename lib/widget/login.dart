import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gam3a_cars_project/home/home.dart';
import 'package:gam3a_cars_project/widget/decoration.dart';
import 'package:gam3a_cars_project/widget/fonts.dart';
import 'package:gam3a_cars_project/widget/sign_up.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'email_feild.dart';
import 'password.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

String? password;

String? email;

GlobalKey<FormState> formkey = GlobalKey();
bool isloading = false;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Stack(
        children: [
          decoration(
            image: AssetImage('assets/1680129703.jpg'),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Form(
                key: formkey,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        child: Center(
                          child: Text(
                            'Login Page',
                            style: Kheading,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: EmailFeild(
                                onChanged: (data) {
                                  email = data;
                                },
                              ),
                            ),
                            PasswordField(
                              onChanged: (dataa) {
                                password = dataa;
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('done');
                              },
                              child: Text(
                                'forget password?',
                                style: Kbody,
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: SizedBox(
                                  width: 250,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      if (formkey.currentState!.validate()) {
                                        isloading = true;
                                        setState(() {});
                                        try {
                                          await loginFunc();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  content:
                                                      Text('Login Sucess.')));
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) {
                                                return home();
                                              },
                                            ),
                                          );
                                        } on FirebaseAuthException catch (e) {
                                          if (e.code == 'invalid-email') {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content:
                                                        Text('invalid-email')));
                                          } else if (e.code =='user-not-found') {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content: 
                                                    Text('user-not-found.')));
                                          } else if (e.code =='wrong-password') {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content: 
                                                    Text('wrong-password.')));
                                          }
                                        } catch (ex) {
                                          print(ex);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  content: Text(
                                                      'There Was An Error.')));
                                        }

                                        isloading = false;
                                        setState(() {});
                                      } else {}
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 23),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color.fromARGB(
                                                  255, 26, 87, 138)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0, // Underline thickness
                                ))),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return sign_up();
                                    }));
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> loginFunc() async {
    var auth = FirebaseAuth.instance;
    // ignore: unused_local_variable
    UserCredential user = await auth.signInWithEmailAndPassword(
        email: email!, password: password!);
    print(user.user!.displayName);
  }
}
