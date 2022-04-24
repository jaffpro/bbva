import 'package:flutter/material.dart';

import 'mod/acc.dart';

class Ad extends StatelessWidget {
  List<EvLog> ev = [
    EvLog("+ \$1600.00", Colors.green, "today", "your payment in cash",
        "BBVA Movement"),
    EvLog("- \$1600.00", Colors.red, "today", "Samir Walid",
        "Interbank transfer"),
    EvLog("", Colors.red, "january 2", "break", ""),
    EvLog("- \$1600.00", const Color(0xff004481), "Yesterday",
        "your payment in cash", "BBVA Movement"),
  ];

  List<Opr> btnlist = [
    Opr(
        const Color(0xff3767f0),
        const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
        "pay service"),
    Opr(const Color(0xff4cabce),
        const Icon(Icons.sync_alt, color: Colors.white), "transfer"),
    Opr(
        const Color(0xff49d17c),
        const Icon(Icons.currency_lira, color: Colors.white),
        "Withdrawal\nwithout card"),
    Opr(const Color(0xff004481),
        const Icon(Icons.keyboard_control, color: Colors.white), "6 more"),
  ];
  Acc acc;
  Ad({Key? key, required this.acc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5F0F6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 264,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 67.0, right: 15, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color(0xff004481),
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Account *" + acc.cnum.toString(),
                        style: const TextStyle(
                            color: Color(0xff004481),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Expanded(child: Container()),
                      Image.asset("assets/received_613861.png")
                    ],
                  ),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 13.0, right: 13, top: 140),
                  child: Container(
                    width: double.infinity,
                    height: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xff004481),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/BBVA_2019.png",
                                scale: 2,
                              ),
                              Expanded(child: Container()),
                              const Icon(
                                Icons.keyboard_control,
                                color: Color(0xffB6CADB),
                                size: 30,
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  "\$" + acc.amount.toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                const Text(
                                  "available balance",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Row(
                            children: [
                              Text(
                                acc.transnum.toString(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Expanded(child: Container()),
                              Image.asset("assets/g4158.png"),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          Container(
            height: 179,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/Icon feather-cr.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "card detail",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff004481)),
                      ),
                      Expanded(child: Container()),
                      const Text(
                        "turn off card",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff004481)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset("assets/Path 36.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    child: ListView.builder(
                        itemCount: btnlist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return btn(btnlist[index]);
                        }),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text("Last movements",
                                style: TextStyle(
                                    color: Color(0xff004481),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                            Expanded(child: Container()),
                            const Icon(
                              Icons.search,
                              color: Color(0xff004481),
                            )
                          ],
                        ),
                        Container(
                          height: 200,
                          width: double.infinity,
                          child: ListView.builder(
                              itemCount: ev.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return movRow(ev[index]);
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget btn(Opr x) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: x.color,
            child: x.icon,
            padding: const EdgeInsets.all(15.0),
            shape: const CircleBorder(),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(x.title,
              style: const TextStyle(
                  color: Color(0xff4b637a),
                  fontSize: 11,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }

  Widget movRow(EvLog x) {
    Widget xx = Container();
    if (x.title == "break") {
      xx = Padding(
        padding: const EdgeInsets.only(bottom: 11),
        child: Text(x.day,
            style: const TextStyle(
                color: Color(0xff004481),
                fontWeight: FontWeight.bold,
                fontSize: 15)),
      );
    } else {
      xx = Padding(
        padding: const EdgeInsets.only(bottom: 11),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffEBF1F5),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(14)),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      x.title,
                      style: const TextStyle(
                          fontSize: 15,
                          color: Color(0xff163f76),
                          fontWeight: FontWeight.w500),
                    ),
                    Expanded(child: Container()),
                    Text(
                      x.ammount,
                      style: TextStyle(
                          color: x.color,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(x.subtitle,
                        style: const TextStyle(
                            color: Color(0xff8294cc), fontSize: 10)),
                    Expanded(child: Container()),
                    Text(x.day,
                        style: const TextStyle(
                            color: Color(0xff8294cc), fontSize: 10)),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
    return xx;
  }
}
