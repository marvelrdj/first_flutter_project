// ignore: unused_import
import 'package:flutter/material.dart';
import 'home.dart';

class friedrice extends StatefulWidget {
  const friedrice({Key? key}) : super(key: key);

  @override
  State<friedrice> createState() => _friedrice();
}

class _friedrice extends State<friedrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(154, 186, 234, 247),
            title: Text(''),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
              },
            )),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.arrow_drop_down_circle),
                        title: const Text('ARYAAS RESTAURANT'),
                        subtitle: Text(
                          'Address: Meera Rubber Industries, National Highway 7A, Rahmath Nagar, Kamaraj Nagar, Tirunelveli, Tamil Nadu 627011',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Your Favorite Food Available Here ',
                          style: TextStyle(
                              color: const Color.fromARGB(179, 106, 244, 0)
                                  .withOpacity(0.6)),
                        ),
                      ),
                      const Divider(indent: 16),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('VEG'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('NON-VEG'),
                          ),
                        ],
                      ),
                      const Wrap(children: [
                        ChoiceChip(
                          label: Text('Small'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Regular'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Medium'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Large'),
                          selected: true,
                        ),
                      ]),
                      Image.asset('assets/Vegrice.jpg'),
                    ],
                  ),
                ),
              ),
              Wrap(children: [
                ActionChip(
                  avatar: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
                ActionChip(
                  avatar: const Icon(Icons.shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
              ]),
              const Divider(indent: 16),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.arrow_drop_down_circle),
                        title: const Text('ANJAPPAR RESTAURANT'),
                        subtitle: Text(
                          'Address: Sadakathullah Appa College Bus Stop, Rehmath Nagar East, Palayamkottai, Tirunelveli, Tamil Nadu 627002',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Your Favorite Food Available Here ',
                          style: TextStyle(
                              color: const Color.fromARGB(179, 106, 244, 0)
                                  .withOpacity(0.6)),
                        ),
                      ),
                      const Divider(indent: 16),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('VEG'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('NON-VEG'),
                          ),
                        ],
                      ),
                      const Wrap(children: [
                        ChoiceChip(
                          label: Text('Small'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Regular'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Medium'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Large'),
                          selected: true,
                        ),
                      ]),
                      Image.asset('assets/fr2.jpg'),
                    ],
                  ),
                ),
              ),
              Wrap(children: [
                ActionChip(
                  avatar: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
                ActionChip(
                  avatar: const Icon(Icons.shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
              ]),
              const Divider(indent: 16),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.arrow_drop_down_circle),
                        title: const Text('SRI JANAKIRAM_S RESTAURANT'),
                        subtitle: Text(
                          'Address: Opp to uzhavar sandhai, Sivanthipatti Rd, Maharaja Nagar, Tirunelveli, Tamil Nadu 627011',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Your Favorite Food Available Here ',
                          style: TextStyle(
                              color: const Color.fromARGB(179, 106, 244, 0)
                                  .withOpacity(0.6)),
                        ),
                      ),
                      const Divider(indent: 16),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('VEG'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('NON-VEG'),
                          ),
                        ],
                      ),
                      const Wrap(children: [
                        ChoiceChip(
                          label: Text('Small'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Regular'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Medium'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Large'),
                          selected: true,
                        ),
                      ]),
                      Image.asset('assets/fr3.jpg'),
                    ],
                  ),
                ),
              ),
              Wrap(children: [
                ActionChip(
                  avatar: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
                ActionChip(
                  avatar: const Icon(Icons.shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
              ]),
              const Divider(indent: 16),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.arrow_drop_down_circle),
                        title: const Text('THE ITALIAN RESTAURANT'),
                        subtitle: Text(
                          'Address: Door No. 9/2 Tiruchendur Main Rd Kamaraj Nagar, Palayamkottai, Tirunelveli, Tamil Nadu 627001',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Your Favorite Food Available Here ',
                          style: TextStyle(
                              color: const Color.fromARGB(179, 106, 244, 0)
                                  .withOpacity(0.6)),
                        ),
                      ),
                      const Divider(indent: 16),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('VEG'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('NON-VEG'),
                          ),
                        ],
                      ),
                      const Wrap(children: [
                        ChoiceChip(
                          label: Text('Small'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Regular'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Medium'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Large'),
                          selected: true,
                        ),
                      ]),
                      Image.asset('assets/fr4.jpg'),
                    ],
                  ),
                ),
              ),
              Wrap(children: [
                ActionChip(
                  avatar: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
                ActionChip(
                  avatar: const Icon(Icons.shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
              ]),
              const Divider(indent: 16),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.arrow_drop_down_circle),
                        title: const Text('SRI MADHURAM RESTAURANT'),
                        subtitle: Text(
                          'Address: 9H, North, High Ground Rd, opp. Krishna hospital, Palayamkottai, Tirunelveli, Tamil Nadu 627002',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Your Favorite Food Available Here ',
                          style: TextStyle(
                              color: const Color.fromARGB(179, 106, 244, 0)
                                  .withOpacity(0.6)),
                        ),
                      ),
                      const Divider(indent: 16),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('VEG'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('NON-VEG'),
                          ),
                        ],
                      ),
                      const Wrap(children: [
                        ChoiceChip(
                          label: Text('Small'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Regular'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Medium'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Large'),
                          selected: true,
                        ),
                      ]),
                      Image.asset('assets/fr5.jpg'),
                    ],
                  ),
                ),
              ),
              Wrap(children: [
                ActionChip(
                  avatar: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
                ActionChip(
                  avatar: const Icon(Icons.shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
              ]),
              const Divider(indent: 16),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.arrow_drop_down_circle),
                        title: const Text('ANNAPOORNA RESTAURANT'),
                        subtitle: Text(
                          'Address: No:1016/D, Tiruchendur Main Rd, opp. District Court, Tirunelveli, Tamil Nadu 627002',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Your Favorite Food Available Here ',
                          style: TextStyle(
                              color: const Color.fromARGB(179, 106, 244, 0)
                                  .withOpacity(0.6)),
                        ),
                      ),
                      const Divider(indent: 16),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('VEG'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('NON-VEG'),
                          ),
                        ],
                      ),
                      const Wrap(children: [
                        ChoiceChip(
                          label: Text('Small'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Regular'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Medium'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Large'),
                          selected: true,
                        ),
                      ]),
                      Image.asset('assets/fr6.jpg'),
                    ],
                  ),
                ),
              ),
              Wrap(children: [
                ActionChip(
                  avatar: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
                ActionChip(
                  avatar: const Icon(Icons.shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
              ]),
              const Divider(indent: 16),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.arrow_drop_down_circle),
                        title: const Text('BUHARI RESTAURANT'),
                        subtitle: Text(
                          'Address: 1, Puthumaipithan Veethi, Kailash Nagar, Vannarpettai, Tirunelveli, Tamil Nadu 627003',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Your Favorite Food Available Here ',
                          style: TextStyle(
                              color: const Color.fromARGB(179, 106, 244, 0)
                                  .withOpacity(0.6)),
                        ),
                      ),
                      const Divider(indent: 16),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('VEG'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('NON-VEG'),
                          ),
                        ],
                      ),
                      const Wrap(children: [
                        ChoiceChip(
                          label: Text('Small'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Regular'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Medium'),
                          selected: true,
                        ),
                        ChoiceChip(
                          label: Text('Large'),
                          selected: true,
                        ),
                      ]),
                      Image.asset('assets/fr7.jpg'),
                    ],
                  ),
                ),
              ),
              Wrap(children: [
                ActionChip(
                  avatar: const Icon(Icons.add_shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
                ActionChip(
                  avatar: const Icon(Icons.shopping_cart),
                  label: const Text('Add to Cart'),
                  onPressed: () {},
                ),
              ]),
              const Divider(indent: 16),
            ])));
  }
}
