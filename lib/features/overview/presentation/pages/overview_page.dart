import 'package:flutter/material.dart';
import 'package:neon_web/core/style/constants.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorWhite,
        shape: Border.all(color: kColorDarkBlue),
        title: const Text(
          'Neon Mobbin222',
          style: TextStyle(color: kColorBlack),
        ),
        centerTitle: true,
        titleSpacing: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: kColorDarkBlue)),
                  width: 200,
                  height: 700,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: kColorDarkBlue)),
                      width: 800,
                      child: const TextField(
                        decoration: InputDecoration(hintText: 'Search'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: kColorDarkBlue)),
                            child: const Text('Filter nach Art'),
                          ),
                          const SizedBox(width: 20),
                          Container(
                              alignment: Alignment.center,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: kColorDarkBlue)),
                              child: const Text('Filter nach Patterns')),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              alignment: Alignment.center,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: kColorDarkBlue)),
                              child: const Text('Filter nach Elements')),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
