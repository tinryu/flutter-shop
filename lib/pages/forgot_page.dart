import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  String name = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Quên mật khẩu'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 24.0, horizontal: 28.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Nhập Email", labelText: "Email"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    SizedBox(
                      height: 30.0,
                    ),
                    Material(
                      color: context.theme.buttonColor,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () => print('send'),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            "Gửi",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
