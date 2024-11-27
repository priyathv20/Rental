import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> item = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-lkBHAGNdTR5pTyx-T0_Y4yW8voc55IGQMA&s.jpg',
      'name': 'india'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc9MHct9GFmvoL-8FceBwTmozQdi19Xj3nvg&s.jpg',
      'name': 'Moscow'
    },
    {
      'image':
          'https://www.artzolo.com/cdn/shop/files/untitled-512-siva-balan.jpg?v=1728740668&width=900.jpg',
      'name': 'USA'
    },
  ];

  final List<Map<String, dynamic>> _items = [
    {
      'image1':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQdEIf1onmcWhWJ2cq12gwV1ZBvUGHjEP5lQ&s.jpg'
    },
    {
      'image1':
          'https://www.shutterstock.com/image-photo/beautiful-home-exterior-600nw-160071032.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 226, 229, 230)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Explore the world! By',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'Travelling',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                                height: 45,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    icon: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF9E9E9E),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Icon(Icons.search)),
                                    border: InputBorder.none,
                                    hintText: 'Where did you go?',
                                  ),
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Icon(Icons.menu),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      'Popular locations',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 160,
                            width: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(item[index]['image']),
                                    fit: BoxFit.fill),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 130,
                                ),
                                Text(
                                  item[index]['name'].toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Recommanded',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 160,
                            width: 220,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        NetworkImage(_items[index]['image1']),
                                    fit: BoxFit.fill),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Icon(
                                      Icons.heart_broken,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                "120",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              const Text('/ Night',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                width: 110,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange[900],
                                size: 16,
                              ),
                              Text('4')
                            ],
                          ),
                          const Text('Carinthia Lake see Breakfast...',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)),
                          const Text(
                            'Private room / 4 beds',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 280,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2015/07/29/00/10/girl-865304_960_720.jpg'),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hosting Fee For',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      const Text(
                        'as low as 1%',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {},
                          child: const Text('Become a Host',
                              style: TextStyle(color: Colors.white)))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  children: [
                    Text(
                      'Most Viewed',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180,
                      width: 310,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://media.newhomeinc.com/348/2022/11/30/The-Apex-Georgian-Elevation-1.jpeg?width=1000&ois=0360179&fit=bounds&height=666.jpg'),
                              fit: BoxFit.fill),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Icon(
                                Icons.heart_broken,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "90",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text('/ Night',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          width: 200,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange[900],
                          size: 16,
                        ),
                        Text('4')
                      ],
                    ),
                    const Text('Carinthia Lake see Breakfast...',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                    const Text(
                      'Private room / 4 beds',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 180,
                      width: 310,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://www.mydomaine.com/thmb/bepet4VMGUG70sCLFNQRdZm9bbg=/2048x0/filters:no_upscale():strip_icc()/SuCasaDesign-Modern-9335be77ca0446c7883c5cf8d974e47c.jpg'),
                              fit: BoxFit.fill),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Icon(
                                Icons.heart_broken,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "300",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text('/ Night',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          width: 200,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange[900],
                          size: 16,
                        ),
                        Text('5')
                      ],
                    ),
                    const Text('Carinthia Lake see Breakfast...',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                    const Text(
                      'Private room / 4 beds',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 180,
                      width: 310,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://housing.com/news/wp-content/uploads/2023/03/exterior-design-shutterstock_1932966368-1200x700-compressed.jpg'),
                              fit: BoxFit.fill),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Icon(
                                Icons.heart_broken,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "240",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text('/ Night',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          width: 200,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange[900],
                          size: 16,
                        ),
                        Text('5')
                      ],
                    ),
                    const Text('Carinthia Lake see Breakfast...',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                    const Text(
                      'Private room / 4 beds',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
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
