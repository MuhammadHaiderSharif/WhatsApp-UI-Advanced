import 'package:flutter/material.dart';

class CallsWidget extends StatelessWidget {
  List<String> arr = [
    'Alex,',
    'Aima',
    'Neha',
    'Lady Diana',
    'Harry',
    'Winona',
    'Sandy',
    'Victoria',
    'Maryam',
    'John'
  ];
  CallsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Column(
          children: [
            for (int i = 1; i < 5; i++)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'assets/profile$i.jpg',
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            arr[i - 1],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.call_made,
                                color: Color(0xff0FCE5E),
                                size: 19,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '(1) Today, 12:59',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.call_sharp,
                    color: Color(0xff075E55),
                  )
                ]),
              ),
            for (int i = 5; i < 9; i++)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'assets/profile$i.jpg',
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            arr[i - 1],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.call_received,
                                color: Colors.red,
                                size: 19,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '(1) Today, 10:59',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.videocam,
                    color: Color(0xff075E55),
                  )
                ]),
              ),
          ],
        ),
      ),
    );
  }
}
