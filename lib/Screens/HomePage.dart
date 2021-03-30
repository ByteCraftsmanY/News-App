import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:news_portal/Utility/DataFile.dart';
import 'package:provider/provider.dart';
import 'package:news_portal/Components/Button.dart';
import 'package:news_portal/Utility/Provider.dart';

import 'Headlines.dart';

String key;

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    List<EButton> cun = [];
    // List<EButton> cat = [];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        // appBar: AppBar(
        //   backgroundColor: Colors.lightBlue,
        //   title: Text(
        //     'Flutter News',
        //   ),
        //   centerTitle: true,
        //   titleTextStyle: TextStyle(
        //     color: Colors.green,
        //     fontWeight: FontWeight.w800,
        //   ),
        // ),
        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                      tileColor: Colors.green[100],
                      focusColor: Colors.blue,
                      selectedTileColor: Colors.amber,
                      hoverColor: Colors.greenAccent,
                      leading: Icon(Icons.arrow_circle_up_outlined),
                      title: TextField(
                        onChanged: (value) {
                          key = value;
                        },
                      ),
                      trailing: TextButton.icon(
                        onPressed: () async {
                          String q = 'q';
                          if (key.contains('.com') == true) q = 'domains';
                          var data = await Data().getData(
                            url: Uri.https(
                              'newsapi.org',
                              '/v2/everything',
                              {
                                q: key,
                                'apiKey': '8d6fd2283b4540de8a4f8a035c0d6b95'
                              },
                            ),
                          );
                          Navigator.pushNamed(
                            context,
                            HeadLines.id,
                            arguments: HeadLines(
                              ls: data['articles'],
                            ),
                          );
                        },
                        icon: Icon(Icons.search),
                        label: Text(''),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Headlines'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Sources'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                // height: 20,
                // width: 20,
                color: Colors.white38,
                child: Consumer<AllThings>(builder: (context, pd, child) {
                  for (var i in pd.country)
                    cun.add(
                      EButton(
                        c: i,
                      ),
                    );
                  // for (var i in pd.catagery)
                  //   cat.add(
                  //     EButton(
                  //       name: i.nameid,
                  //       pic: i.pic,
                  //       id: i.nameid,
                  //       type: false,
                  //     ),
                  //   );
                  return Column(
                    children: [
                      // Expanded(
                      //   flex: 3,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: SizedBox(
                      //       child: GridView.builder(
                      //         gridDelegate:
                      //             SliverGridDelegateWithFixedCrossAxisCount(
                      //                 crossAxisCount: 3,
                      //                 crossAxisSpacing: 4,
                      //                 mainAxisSpacing: 4),
                      //         itemBuilder: (context, index) {
                      //           return cat[index];
                      //         },
                      //         itemCount: pd.catlength,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Expanded(
                        child: SizedBox(
                          // height: 100,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return cun[index];
                            },
                            itemCount: pd.length,
                            scrollDirection: Axis.horizontal,
                            // shrinkWrap: true,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
