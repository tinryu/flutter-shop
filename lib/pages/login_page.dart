// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:saleshop/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formKey = GlobalKey<FormState>();

  moveRegister(BuildContext context) {
    Navigator.pushNamed(context, MyRoutes.registerRoute);
  }

  moveForgot(BuildContext context) {
    Navigator.pushNamed(context, MyRoutes.forgotRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Đăng nhập'),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Nhập email hoặc số điện thoại",
                              labelText: "Email hoặc số điện thoại"),
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
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Nhập password", labelText: "Mật khẩu"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password lengh should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: Text(
                              'Đăng ký tài khoản mới !',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Color(0xff105CA5)),
                            ),
                            onTap: () => moveRegister(context),
                          ),
                          Spacer(flex: 1),
                          InkWell(
                            child: Text(
                              'Quên mật khẩu ?',
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Color(0xff105CA5)),
                            ),
                            onTap: () => moveForgot(context),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Material(
                        color: context.theme.buttonColor,
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () => print('dangnhap'),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "Đăng Nhập".toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Stack(
                        children: [
                          Divider(
                            color: Color(0xffECEBEB),
                            height: 50.0,
                            thickness: 0.5,
                          ),
                          Positioned(
                            left:
                                (MediaQuery.of(context).size.width - 250.0) / 2,
                            top: 15.0,
                            child: Container(
                              width: 200.0,
                              height: 20.0,
                              alignment: Alignment.center,
                              child: new Text("Hoặc đang nhập bằng"),
                              decoration: new BoxDecoration(
                                color: context.theme.canvasColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(100),
                        child: InkWell(
                          onTap: () => {print('Facebook')},
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff39B3F2))),
                            child: Text(
                              "Đăng nhập bằng FaceBook".toUpperCase(),
                              style: TextStyle(
                                  color: context.theme.accentColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(100),
                        child: InkWell(
                          onTap: () => {print('GG')},
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffFF8080))),
                            child: Text(
                              "Đăng nhập bằng Google".toUpperCase(),
                              style: TextStyle(
                                  color: context.theme.accentColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
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
        ));
  }
}
