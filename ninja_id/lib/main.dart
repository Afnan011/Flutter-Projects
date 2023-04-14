import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaCounter += 1;
          });
        },
        backgroundColor: Colors.grey[850],
        child: const Icon( Icons.add),
      ),


      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb_ninja_app.jpg'),
                radius: 50,
              ),
            ),

            Divider(
                height: 40,
                color: Colors.grey[700],
            ),

            const Text(
                'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'AFNAN',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 5),

              Text(
              '$ninjaCounter',
              style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Row(
              children:  const <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),

                SizedBox(width: 10),

                Text(
                  'muhammedafnan8184@gmail.com',
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),

                ],
            ),

            const SizedBox(height: 50),

            Center(
              child: FilledButton(
                onPressed: (){
                  setState(() {

                  if(ninjaCounter == 0)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Failed to reset"),
                        duration: Duration(milliseconds: 1000),
                        animation: kAlwaysDismissedAnimation,
                      ));
                      return;
                    }

                    ninjaCounter = 0;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[600]),
                ),

                child:  Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon( Icons.reset_tv),
                    SizedBox(width: 10),
                    Text('Reset'),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


}


