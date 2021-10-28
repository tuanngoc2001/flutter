import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            Container(
              height: 70.0,
              width: 70.0,
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffd8d8d8),
              ),
              child: const FlutterLogo(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Hello!',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Welcome Back',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                labelStyle: TextStyle(fontSize: 13.0),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 13),
                      prefixIcon: Icon(Icons.lock_rounded)),
                ),
                GestureDetector(
                  child: const Icon(Icons.remove_red_eye),
                )
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Re-Password',
                      labelStyle: TextStyle(fontSize: 13),
                      prefixIcon: Icon(Icons.lock_rounded)),
                ),
                GestureDetector(
                  child: const Icon(Icons.remove_red_eye),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 50.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
