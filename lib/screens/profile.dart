import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF22215B),
            )),
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Color(0xFF22215B),
            fontFamily: 'Gilroy',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_horiz_rounded,
              color: Color(0xFF22215B),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 37, horizontal: 30),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                height: MediaQuery.of(context).size.height * 0.38,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(0xff22215B),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Image.asset('assets/logo/profile.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Rifky Pahlevy',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Mobile Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 223, 217, 217),
                        fontFamily: 'Gilroy',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My Folders',
                    style: TextStyle(
                      color: Color(0xff22215B),
                      fontFamily: 'Gilroy',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.add,
                        color: Color(0xff22215B),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.display_settings_sharp,
                        color: Color(0xff22215B),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xff22215B),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GridView.builder(
                  itemCount: 4,
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
                            children: const [
                              Icon(
                                Icons.folder,
                                color: Color(0xff22215B),
                                size: 40,
                              ),
                              Icon(Icons.more_vert_outlined,
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
                  }),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recent Uploads',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 15,
                        color: Color(0xFF22215B),
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.short_text_rounded,
                    color: Color(0xFF22215B),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                        title: const Text(
                          'Project.docx',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 15,
                              color: Color(0xFF22215B),
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text(
                          'November 22.2020',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 11,
                              color: Color.fromARGB(255, 168, 167, 194),
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: const Text(
                          '300kb',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 11,
                              color: Color.fromARGB(255, 168, 167, 194),
                              fontWeight: FontWeight.w400),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: const Color(0xFFEEF7FE),
                          child: Image.asset('assets/logo/Word.png'),
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
