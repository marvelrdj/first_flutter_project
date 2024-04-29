import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sample/coupons.dart';
// ignore: unused_import
import 'package:sample/veg.dart';

// ignore: unused_import
import 'biriyani.dart';
import 'burger.dart';
import 'changepassword.dart';
import 'friedrice.dart';
import 'grilled.dart';
import 'juice.dart';
// ignore: unused_import
import 'login.dart';
import 'myaccount.dart';
// ignore: unused_import
import 'non-veg.dart';
import 'pizza.dart';
import 'porota.dart';
import 'shawarma.dart';
// ignore: duplicate_import, unused_import
import 'veg.dart';
import 'view/cardview.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'assets/food0.jpeg',
      'assets/food8.webp',
      'assets/food7.jpg',
      'assets/food6.webp',
      'assets/food4.jpg',
      'assets/food9.webp',
      'assets/food10.jpg',
      'assets/food11.jpg',
    ];
    // ignore: unused_element

    return Scaffold(
        drawer: Drawer(
          child: Container(
            // Set the desired background color for the Column
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text('SriHari'),
                    accountEmail: Text('srihari143@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/naruto1.jpg'),
                    ),
                  ), // Set the desired radius of the circle

                  Divider(
                    height: 2.0,
                  ),

                  ListTile(
                      title: Text('My Account'),
                      leading: Icon(Icons.menu),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => account()),
                        );
                      }),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                      title: Text('Your order'),
                      leading: Icon(Icons.arrow_outward_rounded),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pizza()),
                        );
                      }),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                      title: Text('Coupons'),
                      leading: Icon(Icons.local_offer),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => coupons()),
                        );
                      }),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                      title: Text('Favourite order'),
                      leading: Icon(Icons.favorite),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pizza()),
                        );
                      }),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                      title: Text('Address'),
                      leading: Icon(Icons.location_city),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pizza()),
                        );
                      }),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                      title: Text(' Change Password'),
                      leading: Icon(Icons.password_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => changepass()),
                        );
                      }),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                      title: Text(' Language'),
                      leading: Icon(Icons.language),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pizza()),
                        );
                      }),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                      title: Text('Your Rating'),
                      leading: Icon(Icons.rate_review),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pizza()),
                        );
                      }),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                      title: Text(' Feedback'),
                      leading: Icon(Icons.feedback),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pizza()),
                        );
                      }),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                      title: Text(' Logout'),
                      leading: Icon(Icons.logout_rounded),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login()),
                        );
                      }),
                  Divider(
                    height: 2.0,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView(children: <Widget>[
          AppBar(
            actions: const [
              Icon(Icons.shopping_cart_sharp),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ],
            backgroundColor: Color.fromARGB(154, 186, 234, 247),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {});
              },
              decoration: const InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
          ),
          // Place your search result widget here

          const Divider(indent: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(154, 186, 234, 247)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => biriyani()));
                      // Respond to button press
                    },
                    child: const Text('Biriyani'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(154, 186, 234, 247)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const porota()));
                      // Respond to button press
                    },
                    child: const Text('Porota'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(154, 186, 234, 247)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const friedrice()));
                      // Respond to button press
                    },
                    child: Text('Fried Rice'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(154, 186, 234, 247)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const shawarma()));
                      // Respond to button press
                    },
                    child: Text('Shawarma'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(154, 186, 234, 247)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const pizza()));
                      // Respond to button press
                    },
                    child: Text('Pizza'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(154, 186, 234, 247)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const burger()));
                      // Respond to button press
                    },
                    child: Text('Burger'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(154, 186, 234, 247)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const grilled()));
                      // Respond to button press
                    },
                    child: Text(' Grilled Chicken'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(154, 186, 234, 247)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => juice(
                                    fooddata: [],
                                  )));
                      // Respond to button press
                    },
                    child: Text('Juice'),
                  ),
                ),
              ],
            ),
          ),
          const Divider(indent: 16),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio:
                  2.0, // Set the aspect ratio to maintain the circular shape
              enlargeCenterPage: true,
              viewportFraction: 0.6,

              height: 200, // Adjust the height of the carousel as needed
              autoPlay:
                  true, // Set it to false if you don't want the carousel to automatically slide
            ),
            items: imageList.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(imagePath, fit: BoxFit.cover),
                  );
                },
              );
            }).toList(),
          ),
          const Divider(indent: 16),
          Center(
            child: InkWell(
              onTap: () {
                // Handle button tap here
                print('Button tapped');
              },
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset(
                'assets/offergif2.gif', // Replace with your GIF path
                width: 400, // Set the desired width of the GIF
                height: 160, // Set the desired height of the GIF
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Divider(indent: 26),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 15)),
              ListTile(
                title: const Text(
                  'RECENTLY VIEWED ITEMS',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.cyan),
                ),
              ),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 160, // Adjust the width as needed
                          height: 160, // Adjust the height as needed
                          child: CustomCard(
                            padding: EdgeInsets.all(20.0),
                            color: Colors.white,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            image: AssetImage('assets/fullgrill1.jpg'),
                            child: Text('Grill'),
                          ),
                        ),
                        Container(
                          width: 160, // Adjust the width as needed
                          height: 160, // Adjust the height as needed
                          child: CustomCard(
                            padding: EdgeInsets.all(20.0),
                            color: Colors.white,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            image: AssetImage('assets/fullgrill1.jpg'),
                            child: Text('Grill'),
                          ),
                        ),
                        Container(
                          width: 160, // Adjust the width as needed
                          height: 160, // Adjust the height as needed
                          child: CustomCard(
                            padding: EdgeInsets.all(20.0),
                            color: Colors.white,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            image: AssetImage('assets/fullgrill1.jpg'),
                            child: Text('Grill'),
                          ),
                        ),
                        Container(
                          width: 160, // Adjust the width as needed
                          height: 160, // Adjust the height as needed
                          child: CustomCard(
                            padding: EdgeInsets.all(20.0),
                            color: Colors.white,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            image: AssetImage('assets/fullgrill1.jpg'),
                            child: Text('Grill'),
                          ),
                        ),
                        Container(
                          width: 160, // Adjust the width as needed
                          height: 160, // Adjust the height as needed
                          child: CustomCard(
                            padding: EdgeInsets.all(20.0),
                            color: Colors.white,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            image: AssetImage('assets/fullgrill1.jpg'),
                            child: Text('Grill'),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),

          const Divider(indent: 26),
          Container(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text('SRI SIVA RESTAURANT'),
                    subtitle: Text(
                      'Palayamkottai,Tirunelveli',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your Favorite Food Available Here Poster',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const Divider(indent: 16),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const veg()),
                          );
                          // Perform some action
                        },
                        child: const Text('VEG'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const nonveg()),
                          );
                          // Perform some action
                        },
                        child: const Text('NON-VEG'),
                      ),
                    ],
                  ),
                  const Wrap(spacing: 30.0, children: [
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
          Wrap(spacing: 30.0, children: [
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

          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.arrow_drop_down_circle),
                title: const Text('ARYAAS RESTAURANT'),
                subtitle: Text(
                  'Palayamkottai,Tirunelveli',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Your Favorite Food Available Here ',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const Divider(indent: 16),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(154, 186, 234, 247)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const veg()),
                      );
                      // Perform some action
                    },
                    child: const Text('VEG'),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(154, 186, 234, 247)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const nonveg()),
                      );
                      // Perform some action
                    },
                    child: const Text('NON-VEG'),
                  ),
                ],
              ),
              const Wrap(spacing: 30.0, children: [
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
              Image.asset('assets/food0.jpeg'),
            ],
          ),

          Wrap(spacing: 30.0, children: [
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text('NAMBI KRISHAN RESTAURANT'),
                    subtitle: Text(
                      'Palayamkottai,Tirunelveli',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your Favorite Food Available Here Poster',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const Divider(indent: 16),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const veg()),
                          );
                          // Perform some action
                        },
                        child: const Text('VEG'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const nonveg()),
                          );
                          // Perform some action
                        },
                        child: const Text('NON-VEG'),
                      ),
                    ],
                  ),
                  const Wrap(spacing: 30.0, children: [
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
                  Image.asset('assets/food8.jpg'),
                ],
              ),
            ),
          ),
          Wrap(spacing: 30.0, children: [
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
          const Divider(indent: 36),
          Center(
            child: InkWell(
              onTap: () {
                // Handle button tap here
                print('Button tapped');
              },
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/offergif.gif', // Replace with your GIF path
                width: 400, // Set the desired width of the GIF
                height: 160, // Set the desired height of the GIF
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Divider(indent: 36),
          Container(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text('SRI SIVA RESTAURANT'),
                    subtitle: Text(
                      'Palayamkottai,Tirunelveli',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your Favorite Food Available Here Poster',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const Divider(indent: 16),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const veg()),
                          );
                          // Perform some action
                        },
                        child: const Text('VEG'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const nonveg()),
                          );
                          // Perform some action
                        },
                        child: const Text('NON-VEG'),
                      ),
                    ],
                  ),
                  const Wrap(spacing: 30.0, children: [
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
                  Image.asset('assets/food7.jpg'),
                ],
              ),
            ),
          ),
          Wrap(spacing: 30.0, children: [
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
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ClipOval(
                      child: Image.asset(
                    'assets/food0.jpeg',
                    width: 150, // Set the desired width of the GIF
                    height: 120, fit: BoxFit.fill,
                  )),
                  ClipOval(
                      child: Image.asset(
                    'assets/food4.jpg',
                    width: 150, // Set the desired width of the GIF
                    height: 120, fit: BoxFit.fill,
                  )),
                  ClipOval(
                      child: Image.asset(
                    'assets/food6.webp',
                    width: 150, // Set the desired width of the GIF
                    height: 120, fit: BoxFit.fill,
                  )),
                  ClipOval(
                      child: Image.asset(
                    'assets/food7.jpg',
                    width: 150, // Set the desired width of the GIF
                    height: 120, fit: BoxFit.fill,
                  )),
                  ClipOval(
                      child: Image.asset(
                    'assets/food8.jpg',
                    width: 150, // Set the desired width of the GIF
                    height: 120, fit: BoxFit.fill,
                  )),
                ],
              )),
          const Divider(indent: 16),
          Container(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text('SRI SIVA RESTAURANT'),
                    subtitle: Text(
                      'Palayamkottai,Tirunelveli',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your Favorite Food Available Here Poster',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const Divider(indent: 16),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const veg()),
                          );
                          // Perform some action
                        },
                        child: const Text('VEG'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const nonveg()),
                          );
                          // Perform some action
                        },
                        child: const Text('NON-VEG'),
                      ),
                    ],
                  ),
                  const Wrap(spacing: 30.0, children: [
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
                  Image.asset('assets/food6.png'),
                ],
              ),
            ),
          ),
          Wrap(spacing: 30.0, children: [
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
          Container(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: Text('SRI RAMAN RESTAURANT'),
                    subtitle: Text(
                      'Vannar Pettai,Tirunelveli',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your Favorite Food Available Here Poster',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const Divider(indent: 16),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const veg()),
                          );
                          // Perform some action
                        },
                        child: const Text('VEG'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const nonveg()),
                          );
                          // Perform some action
                        },
                        child: const Text('NON-VEG'),
                      ),
                    ],
                  ),
                  const Wrap(spacing: 30.0, children: [
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
          Wrap(spacing: 30.0, children: [
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
                    title: const Text('SRI SIVA RESTAURANT'),
                    subtitle: Text(
                      'Palayamkottai,Tirunelveli',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your Favorite Food Available Here Poster',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const Divider(indent: 16),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const nonveg()),
                          );
                          // Perform some action
                        },
                        child: const Text('VEG'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const nonveg()),
                          );
                          // Perform some action
                        },
                        child: const Text('NON-VEG'),
                      ),
                    ],
                  ),
                  const Wrap(spacing: 30.0, children: [
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
                  Image.asset('assets/food9.jpg'),
                ],
              ),
            ),
          ),
          Wrap(spacing: 30.0, children: [
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
          Center(
            child: InkWell(
              onTap: () {
                // Handle button tap here
                print('Button tapped');
              },
              child: Image.asset(
                'assets/offergif2.gif', // Replace with your GIF path
                width: 400, // Set the desired width of the GIF
                height: 160, // Set the desired height of the GIF
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: Text('SRI RAMAN RESTAURANT'),
                    subtitle: Text(
                      'Vannar Pettai,Tirunelveli',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your Favorite Food Available Here Poster',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const Divider(indent: 16),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const veg()),
                          );
                          // Perform some action
                        },
                        child: const Text('VEG'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const nonveg()),
                          );
                          // Perform some action
                        },
                        child: const Text('NON-VEG'),
                      ),
                    ],
                  ),
                  const Wrap(spacing: 30.0, children: [
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
                  Image.asset('assets/food10.jpg'),
                ],
              ),
            ),
          ),
          Wrap(spacing: 30.0, children: [
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
          Container(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: Text('SRI RAMAN RESTAURANT'),
                    subtitle: Text(
                      'Vannar Pettai,Tirunelveli',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your Favorite Food Available Here Poster',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const Divider(indent: 16),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const veg()),
                          );
                          // Perform some action
                        },
                        child: const Text('VEG'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(154, 186, 234, 247)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const nonveg()),
                          );
                          // Perform some action
                        },
                        child: const Text('NON-VEG'),
                      ),
                    ],
                  ),
                  const Wrap(spacing: 30.0, children: [
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
                  Image.asset('assets/food11.jpg'),
                ],
              ),
            ),
          ),
          Wrap(spacing: 30.0, children: [
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
        ]));
  }
}
