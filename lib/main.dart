import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Dhruvs Application ',
    home:Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
        elevation: 25.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[900],
      ),
      body:
      Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/dhruv-1.jpg'),
                  radius: 40.0,

                ),
              ),
              Divider(
                height: 50.0,
                color: Colors.grey,

              ),
              Text('Name',
                style:TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  //fontWeight: FontWeight.bold,
                  fontSize: 20.0,

                ),
              ),
              SizedBox(height: 5.0),
              Text('Parekh Dhruv',
                style:TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,

                ),
              ),
              SizedBox(height: 25.0),
              Text('Course Name',
                style:TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  //fontWeight: FontWeight.bold,
                  fontSize: 20.0,

                ),
              ),
              SizedBox(height: 5.0),
              Text('Information and communication technology',
                style:TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,

                ),
              ),
              SizedBox(height: 25.0),
              Text('Course level',
                style:TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  //fontWeight: FontWeight.bold,
                  fontSize: 20.0,

                ),
              ),
              SizedBox(height: 5.0),
              Text('$level',
                style:TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,

                ),
              ),
              SizedBox(height: 25.0),
              Row(
                children: <Widget>[
                  Icon(Icons.mail,
                      color: Colors.grey
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Parekhdhruv.ict17@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      letterSpacing: 2.0,
                      fontSize: 17.0,
                    ),
                  )
                ],
              ),
            ]
        ),
      ),
      backgroundColor: Colors.blueGrey[800],
    );
  }
}
