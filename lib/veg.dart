// ignore: unused_import
import 'package:flutter/material.dart';
import 'home.dart';

class veg extends StatefulWidget {
  const veg({Key? key}) : super(key: key);

  @override
  State<veg> createState() => _veg();
}

class _veg extends State<veg> {
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
                      Image.asset('assets/keralameal.jpg'),
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
                      Image.asset('assets/meal1.webp'),
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
                      Image.asset('assets/food4.jpg'),
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
                      Image.asset('assets/mushroom fry.jpg'),
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
                      Image.asset('assets/vegbiryani.jpg'),
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
                      Image.asset('assets/vegman1.jpg'),
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
                      Image.asset('assets/lemon1.jpg'),
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
