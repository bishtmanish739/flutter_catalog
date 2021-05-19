import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routs.dart';

class RagisterPage extends StatefulWidget {
  @override
  _RagisterPageState createState() => _RagisterPageState();
}

class _RagisterPageState extends State<RagisterPage> {
  @override
  int days = 6;

  String email = "";
  bool changebutton = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ragister',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            Text(
              'Welcome your email is $email ',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Email', labelText: 'Enter Your Email '),
                    onChanged: (value) {
                      email = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'password ',
                        labelText: 'Enter Your password '),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Confirm Password ',
                        labelText: 'Confirm Password'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changebutton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                await Navigator.pushNamed(context, MyRouts.homeRouts);
                setState(() {
                  changebutton = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changebutton ? 50 : 150,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius:
                        BorderRadius.circular(changebutton ? 40 : 20)),
                child: Center(
                  child: changebutton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          'Go to Home',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                ),
              ),
            )
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, MyRouts.homeRouts);
            //     },
            //     child: Text('Register'))
          ],
        ),
      ),
    );
  }
}
