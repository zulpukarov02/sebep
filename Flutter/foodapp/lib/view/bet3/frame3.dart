import 'package:flutter/material.dart';

class Frame3 extends StatelessWidget {
  const Frame3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/Mask Group (1).png",
      "assets/Mask Group (2).png",
      "assets/Mask Group (3).png",
      "assets/ZuIDLSz3XLg (1).png",
      "assets/ZuIDLSz3XLg.png",
      "assets/Mask Group (1).png",
      "assets/Mask Group (2).png",
      "assets/Mask Group (3).png",
      "assets/ZuIDLSz3XLg (1).png",
      "assets/ZuIDLSz3XLg.png",
    ];
    return Scaffold(
      backgroundColor: Color(0xff100F1F),
      appBar: AppBar(
        backgroundColor: Color(0xff100F1F),
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.white,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: SizedBox(
            height: 70,
            width: 280,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                hintText: "Search From Here",
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                counter: Icon(Icons.build),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  gapPadding: 10,
                ),
              ),
              textCapitalization: TextCapitalization.characters,
              obscureText: false,
            ),
          ),
        ),
        actions: const [
          Icon(Icons.tune, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.menu, color: Colors.white),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: 700,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 400,
                    height: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Image.asset(images[index]),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Food Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 250,
                              height: 45,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting \nindustry. Lorem Ipsum has been the industry's standard dummy \ntext ever since the 1500s.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            Spacer(),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$300.00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(width: 80),
                                Container(
                                  width: 80,
                                  height: 22,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFF4F4F),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Add Cart',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(endIndent: 20, indent: 20, color: Colors.white)
              ],
            );
          },
        ),
      ),
    );
  }
}
