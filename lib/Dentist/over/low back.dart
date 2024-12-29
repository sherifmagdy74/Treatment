import 'package:flutter/material.dart';

class low extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(top: 35,right: 20,left: 20),
        child:

        SingleChildScrollView(
          child: Column(
            children: [
              Text('1- An important first step in resolving low back pain is ensuring that your dental stool is properly adjusted to maintain & support your lumbar curve. ',
              style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.justify,),
              SizedBox(height: 20,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title:  Text('*Can you easily fit 3 fingers behind your knee without touching the seat?  If not, the seat pan is too deep, you may be ‘perching’ on the seat edge.  You should probably select a stool with a shorter seatpan.',
                    style: TextStyle(color: Colors.white,fontSize: 17),),
                ),
              ),

              SizedBox(height: 15,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title:  Text('*Are your hips higher than your knees?  If not, your lumbar curve is likely flattened–a risk factor for disc herniation.',
                    style: TextStyle(color: Colors.white,fontSize: 17),),
                ),
              ),

              SizedBox(height: 15,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title:  Text('*Tilting the seat forward facilitates a lumbar curve.',
                  style: TextStyle(color: Colors.white,fontSize: 17),),
                ),
              ),

              SizedBox(height: 15,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title:   Text('*Most people should keep the seat flat on saddle-style stools.',
                    style: TextStyle(color: Colors.white,fontSize: 17),textAlign: TextAlign.justify,),
                ),
              ),

              SizedBox(height: 15,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title:    Text('*Do you have hyper- or hypo-lordosis?  If so you’ll need to make adjustments to prevent low back pain.',
                    style: TextStyle(color: Colors.white,fontSize: 17)),
                ),
              ),

              SizedBox(height:25 ,),
              Divider(color: Colors.black,height: 12,),
              SizedBox(height:25 ,),
              Text('2- The second step in preventing these problems is maintaining good posture',
                style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.justify,),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                height: 150,
                width: 150,
                    child:
                    Image(image: AssetImage('assets/1.jpg')),
                  ),
                  Container(
                    height: 150,
                    width: 150,

                    child:
                    Image(image: AssetImage('assets/2.jpg')),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Card(

                color: Colors.teal,
                child: ListTile(
                  title:    Text('* Work close to your body                                       ',
                    style: TextStyle(color: Colors.white,fontSize: 17)),
                ),
              ),

              SizedBox(height: 15,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title: Text('*Minimize excessive write movements',
                    style: TextStyle(color: Colors.white,fontSize: 17),),
                ),
              ),

              SizedBox(height: 15,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title: Text('* Avoid excessive finger movements                 ',
                    style: TextStyle(color: Colors.white,fontSize: 17),),
                ),
              ),

              SizedBox(height: 15,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title: Text('* Alternate work positions between sitting ,standing and side of patient',
                    style: TextStyle(color: Colors.white,fontSize: 17)),
                ),
              ),


              SizedBox(height: 15,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title:  Text('* Adjust the height of your chair and the patients chair to comfortable level' ,
                    style: TextStyle(color: Colors.white,fontSize: 17),),
                ),
              ),

              SizedBox(height: 15,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title:   Text('*Consider horizontal patient positioning       ',
                    style: TextStyle(color: Colors.white,fontSize: 17),),
                ),
              ),

              SizedBox(height: 15,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title:   Text('* Check the placement of the adjustable light      ',
                    style: TextStyle(color: Colors.white,fontSize: 17),),
                ),
              ),

              SizedBox(height: 15,),
            ],
          ),
        ),


      ),
    );
  }
}
