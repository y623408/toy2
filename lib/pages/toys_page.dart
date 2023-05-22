import 'package:flutter/material.dart';
import 'package:khelonawala/constants.dart';

import '../models/toys.dart';

class ToysPage extends StatefulWidget {
  Toys toy;
  String state;
  ToysPage({super.key, required this.toy, required this.state});

  @override
  State<ToysPage> createState() => _ToysPageState();
}

class _ToysPageState extends State<ToysPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 98, 65), //toys[0].color,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: widget.toy.color,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              //height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.3,
                    ),
                    padding: EdgeInsets.only(
                      top: size.height * 0.10,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    //height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                        )),
                    child: Column(
                      children: [
                        ColorAndSize(),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Description(),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        CounterAndFav(),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        AddToCardBuyNow(),
                      ],
                    ),
                  ),
                  TitleAndImage(
                    img: widget.toy.image,
                    price: widget.toy.price,
                    state: widget.state,
                    title: widget.toy.title,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddToCardBuyNow extends StatelessWidget {
  const AddToCardBuyNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: toys[0].color,
              ),
            ),
            child: IconButton(
              icon: Icon(Icons.badge_outlined),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: toys[0].color,
                ),
                color: toys[0].color,
              ),
              //height: 50,
              child: TextButton(
                /*style: TextButton.styleFrom(
                  backgroundColor: toys[0].color,
                ),*/
                onPressed: () {},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CounterAndFav extends StatelessWidget {
  const CounterAndFav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.all(0),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
        ),
      ],
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: () {
            if (numOfItems < 5) {
              setState(() {
                numOfItems++;
              });
            }
          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        toys[0].description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}

class TitleAndImage extends StatelessWidget {
  int price;
  String img;
  String title;
  String state;
  TitleAndImage({
    super.key,
    required this.price,
    required this.img,
    required this.title,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntroAndTitle(
              state: state,
              title: title,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Price\n"),
                      TextSpan(
                        text: "Rs. ${price}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color : "),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(
                  text: "Size\n",
                ),
                TextSpan(
                    text: "${toys[0].size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold))
              ],
            ),
          ),
        )
      ],
    );
  }
}

class IntroAndTitle extends StatelessWidget {
  String state, title;
  IntroAndTitle({
    super.key,
    required this.state,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Toy from ${state}",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )),
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}
