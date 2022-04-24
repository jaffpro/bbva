import 'package:flutter/material.dart';

import 'ad.dart';
import 'mod/acc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Acc> account = [
      Acc(37265, 20000, "001ah7297"),
      Acc(36264, 158000, "001ah7246"),
      Acc(37265, 300000, "001ah7291"),
    ];
    List<Opr> btnlist = [
      Opr(
          const Color(0xfff7893a),
          const Icon(
            Icons.add,
            color: Colors.white,
          ),
          "Opportunities"),
      Opr(const Color(0xff4cabce),
          const Icon(Icons.sync_alt, color: Colors.white), "To transfer"),
      Opr(
          const Color(0xff49d17c),
          const Icon(Icons.currency_lira, color: Colors.white),
          "Withdrawal\nwithout card"),
      Opr(const Color(0xff735fda),
          const Icon(Icons.settings, color: Colors.white), "pay service"),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffDFEBF2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 263,
                color: const Color(0xff004481),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 38, left: 38),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Container()),
                    const Text("Hello, Mustafa",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Expanded(child: Container()),
                    Image.asset("assets/received_613861.png")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13, top: 104),
                child: Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text("YOUR ACCOUNTS",
                                    style: TextStyle(
                                        color: Color(0xff004481),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                Expanded(child: Container()),
                                const Icon(
                                  Icons.keyboard_control,
                                  color: Color(0xffB6CADB),
                                  size: 30,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: double.infinity,
                                height: 130,
                                child: ListView.builder(
                                    itemCount: account.length,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return acc(account[index], context);
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            color: Colors.white,
            height: 140,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ListView.builder(
                  itemCount: btnlist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return btn(btnlist[index]);
                  }),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            color: Colors.white,
            height: 242,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("YOUR ACCOUNTS",
                      style: TextStyle(
                          color: Color(0xff004481),
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ),
                Center(child: Image.asset("assets/Group 2659.png")),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset("assets/Icon feather-cr.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("digital card"),
                    Expanded(child: Container()),
                    const Text("Deactivate"),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/Path 36.png"),
                    Expanded(child: Container()),
                  ],
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(child: Container()),
              Image.asset("assets/add (2).png"),
              const SizedBox(
                width: 66,
              ),
              Image.asset("assets/mail-inbox-app.png"),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget acc(Acc x, BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Ad(
                        acc: x,
                      )),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    x.transnum,
                    style:
                        const TextStyle(fontSize: 17, color: Color(0xff1873b9)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    x.cnum.toString(),
                    style:
                        const TextStyle(fontSize: 14, color: Color(0xff839bb1)),
                  )
                ],
              ),
              Expanded(child: Column()),
              Text(
                '\$' + x.amount.toString(),
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff004481),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 4,
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                size: 25,
                color: Color(0xffBACCDD),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Container(
          color: const Color(0xffDFE7F0),
          height: 2,
        ),
        const SizedBox(
          height: 13,
        ),
      ],
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
}
