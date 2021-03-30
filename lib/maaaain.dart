import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            MyC(),
            MyC(),
            MyC(),
          ],
        ),
      ),
    ),
  ));
}

class MyC extends StatelessWidget {
  const MyC({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Card(
        color: Colors.green.shade50,
        elevation: 5,
        child: Column(
          children: [
            ListTile(
              selected: true,
              selectedTileColor: Colors.blueGrey.shade50,
              focusColor: Colors.blueGrey.shade300,
              hoverColor: Colors.green.shade200,
              leading: Text('Student'),
              shape: RoundedRectangleBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              title: Text('12-2-12'),
              trailing: Wrap(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Icon(Icons.remove_red_eye),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(Icons.done_all),
                  )
                ],
              ),
            ),
            Text(
                'Hello Ji SatShriAfsdgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggssssssssssssssssssssssssssskall'),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card();
  }
}

// Card(
//       elevation: 20,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextButton(
//             child: Text('Hello'),
//             onPressed: () {},
//           ),
//           Text('Hello HI HW hkahfdlah fkadfkl hakahfkl'),
//           Row(
//             children: [

//               SizedBox(
//                 width: 20,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('2'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
