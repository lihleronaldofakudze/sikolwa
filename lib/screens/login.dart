import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final role = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Text(
                '$role',
                style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 100,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email Address',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        contentPadding: EdgeInsets.only(top: 18),
                      ),
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        contentPadding: EdgeInsets.only(top: 18),
                      ),
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Restore Password?',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/wrapper',
                        arguments: '$role');
                  },
                  child: const Text('Access your account'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              role == 'Administrator'
                  ? Container()
                  : Row(
                      children: const [
                        Expanded(flex: 1, child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(flex: 1, child: Divider()),
                      ],
                    ),
              const SizedBox(
                height: 10,
              ),
              role == 'Administrator'
                  ? Container()
                  : SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/membership_request',
                              arguments: role);
                        },
                        child: const Text('Request for a membership'),
                      ),
                    ),
              const SizedBox(
                height: 20,
              ),
              role == 'Administrator'
                  ? Container()
                  : const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'School Terms',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
