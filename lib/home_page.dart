import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool person = false;
  bool timer = false;
  bool cel1 = false;
  bool cel2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Padding(
          padding: EdgeInsets.only(right: 0, left: 0),
          child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Flutter McFlutter',
                              style: TextStyle(fontSize: 20)),
                          Text('Experienced App Developer',
                              style: TextStyle(fontSize: 10))
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('123 Main Street'), Text('(415 555-0198)')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        color: person ? Colors.indigo : Colors.black,
                        onPressed: () {
                          person = !person;
                          timer = false;
                          cel1 = false;
                          cel2 = false;
                          setState(() {});
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  'Únete a un club con otras personas...')));
                        },
                        icon: Icon(Icons.person),
                      ),
                      IconButton(
                        color: timer ? Colors.indigo : Colors.black,
                        onPressed: () {
                          person = false;
                          timer = !timer;
                          cel1 = false;
                          cel2 = false;
                          setState(() {});
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  'Cuenta regresiva para el evento: 31 días...')));
                        },
                        icon: Icon(Icons.timer),
                      ),
                      IconButton(
                        color: cel1 ? Colors.indigo : Colors.black,
                        onPressed: () {
                          person = false;
                          timer = false;
                          cel1 = !cel1;
                          cel2 = false;
                          setState(() {});
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Llama al número 4155550198...')));
                        },
                        icon: Icon(Icons.smartphone),
                      ),
                      IconButton(
                        color: cel2 ? Colors.indigo : Colors.black,
                        onPressed: () {
                          person = false;
                          timer = false;
                          cel1 = false;
                          cel2 = !cel2;
                          setState(() {});
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Llama al celular 3317865113...')));
                        },
                        icon: Icon(Icons.smartphone_sharp),
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
