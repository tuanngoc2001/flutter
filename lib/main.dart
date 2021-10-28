import 'package:flutter/material.dart';
import 'package:login/signin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ));

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}

class _Login extends State<Login> {
  bool s = true;
  TextEditingController _usernamecontroller = new TextEditingController();
  TextEditingController _passcontroller = new TextEditingController();
  var _user = "Tài khoản không hợp lệ";
  var _passw = "Mật khẩu không hợp lệ";
  var _checkuser = false;
  var _checkpass = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //khi bàn phím hiện lên thì size nó sẽ tự động điều chỉnh
      body: Container(
        padding: const EdgeInsets.fromLTRB(20.0, 100, 20.0, 0),
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,//vị trí bắt đầu của một widget
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 70.0,
              height: 70.0,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffd8d8d8),
              ),
              child:const FlutterLogo(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Hello",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: TextField(
                controller: _usernamecontroller,
                decoration: InputDecoration(
                  labelText: 'USERNAME',
                  errorText: _checkuser == true ? _user : null,
                  labelStyle: const TextStyle(fontSize: 13),
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                TextField(
                  obscureText: !s,
                  controller: _passcontroller,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    errorText: _checkpass ? _passw : null,
                    labelStyle: const TextStyle(fontSize: 13),
                  ),
                ),
                // const Text('Show',style: TextStyle(fontSize: 16,color: Colors.blue),)
                GestureDetector(
                  onTap: Xulyhienan,
                  child: s == true
                      ? const Icon(FontAwesomeIcons.eyeSlash)
                      : const Icon(Icons.remove_red_eye_outlined),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  // onPressed: (){
                  //   // setState(() {
                  //   //    Navigator.push(context,new MaterialPageRoute(builder: (context) => Screen()) );
                  //   //   print("co bam roi nha!");
                  //   //   // Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen()));
                  //   // }
                  //   Navigator.push(context,new MaterialPageRoute(builder: (context) => Screen()) );
                  //   // );
                  onPressed: kiemtra,
                  // },
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Screen()));
                      },
                      child: const Text(
                        'New User?Sign Up',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    const Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void Xulyhienan() {
    setState(() {
      s = !s;
    });
  }

  void kiemtra() {
    if (_usernamecontroller.text.length < 6) {
      _checkuser = true;
    } else {
      _checkuser = false;
    }
    if (_passcontroller.text.length < 6) {
      _checkpass = true;
    } else {
      _checkpass = false;
    }
    if (_checkuser == false && _checkpass == false)
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => Screen()));
  }
}
