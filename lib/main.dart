import 'package:flutter/material.dart';
import 'package:chalenge/page.dart'; // Ensure this path is correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(), // Set the home to your main page
    );
  }
}

class MyHomePage extends StatefulWidget { // Use StatefulWidget here
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // Return the correct state type
}

class _MyHomePageState extends State<MyHomePage> { 

  TextEditingController _Username_Controller=new TextEditingController();
  TextEditingController _Password_Controller=new TextEditingController();

  GlobalKey<FormState> _userkey=new GlobalKey<FormState>();
  GlobalKey<FormState> _Passwordkey=new GlobalKey<FormState>();
  String UserName="imran123";
  String PassWord="123456";
  // Match the widget type here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 13, 82, 138),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60),
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),

          // Username Field
          Padding(
            padding: const EdgeInsets.all(30),
            child:Form(
              key: _userkey,
              child: TextFormField(
                controller: _Username_Controller,
              decoration: const InputDecoration(
                hintText: 'User Name',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
                prefixIcon: Icon(Icons.person),
                errorBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                
              ),
              
              
              style: const TextStyle(
                color: Colors.black,
              ),
              validator: (value) {
                if(value!=UserName){
                  return "incorrect username ";
                }
                return null;
              },
            ),
             
            )
          ),
          const SizedBox(height: 15),

          // Password Field
          Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
              key: _Passwordkey,
              child:TextFormField(
              controller: _Password_Controller,
              obscureText: true, 
              // Hides the password input
              decoration: const InputDecoration(
                hintText: 'Password',
                
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
                prefixIcon: Icon(Icons.lock),
                errorBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              style: const TextStyle(
                color: Colors.black,
              ),
              validator: (value) {
                if (value!=PassWord) {
                  return "The password is incorrect !";
                }else{
                  return null;
                }
              },
            ),
             )
          ),
          const SizedBox(height: 10),

          // Login Button using GestureDetector
          GestureDetector(
            onTap: () {
             if (_Username_Controller.text==UserName &&_Password_Controller.text==PassWord) {
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page2(), // Navigate to Page2
                ),
              );
               
             }else{
              _userkey.currentState?.validate();
              _Passwordkey.currentState?.validate();
             }
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
              height: 60,
              width: 300,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 13, 82, 138),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            ),
          ),
        ],
      ),
    );
  }
}
