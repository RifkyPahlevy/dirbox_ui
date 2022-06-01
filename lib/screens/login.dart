import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/logo/Vector.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    bottom: 4,
                    top: 100,
                    left: 5,
                    child: Image.asset(
                      'assets/logo/cloud.png',
                    ),
                  ),
                ],
              ),
              const Text(
                'Welcome to',
                style: TextStyle(
                    color: Color(0xFF22215B),
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Gilroy'),
              ),
              const Text(
                'Dirbbox',
                style: TextStyle(
                    color: Color(0xFF22215B),
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Gilroy'),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Best cloud storage platform for all business and individuals to manage there data Join For Free.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color(0xFF7B7F9E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Gilroy'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/home'),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 230, 232, 240),
                          borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/logo/finger.png',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Smart ID',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF567DF4)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF567DF4),
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Sign In',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 54,
              ),
              const Center(
                child: Text(
                  'Use Sosial Login',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Image.asset(
                  'assets/logo/ig.png',
                ),
                Image.asset(
                  'assets/logo/twiter.png',
                ),
                Image.asset(
                  'assets/logo/fb.png',
                ),
              ]),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'Create an account',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Gilroy'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
