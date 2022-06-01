import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Your Dribbox',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 24,
                        color: Color(0xFF22215B),
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/profile'),
                    child: Image.asset(
                      'assets/logo/Union.png',
                      color: const Color(0xFF22215B),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefix: const Icon(Icons.search_rounded,
                        color: Color(0xFF22215B)),
                    hintText: 'Seacrh Folder'),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Recent',
                        style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 15,
                            color: Color(0xFF22215B),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF22215B),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.line_style, color: Color(0xFF22215B)),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.window_outlined, color: Color(0xFF22215B))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GridView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 19,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          color: const Color(0XFFEEF7FE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/logo/Folder.png'),
                              const Icon(Icons.more_vert_outlined,
                                  color: Color(0xFF22215B)),
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          const Text(
                            'Mobile Apps',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 15,
                                color: Color(0xFF22215B),
                                fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            'December 20.2020',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 10,
                                color: Color(0xFF22215B),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF22215B),
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}
