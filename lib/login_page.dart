import 'package:flutter/material.dart';
import 'forget_page.dart';
import 'blog_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void _NavigateToForward(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to VIP signals',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                    )
                  ],
                ),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                OutlinedButton(
                  onPressed: () {
                    _NavigateToForward(context, BlogPage());
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    foregroundColor: Colors.black,
                    minimumSize: Size(200.0, 40.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(200.0, 40.0),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _NavigateToForward(context, ForgetPage());
                  },
                  child: Text('Forget password ?'),
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black45,
                      minimumSize: Size(200, 40)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
