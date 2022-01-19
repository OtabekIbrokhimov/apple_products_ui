import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static const String id = '/home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
    backgroundColor: Colors.transparent,
elevation: 0,
    centerTitle: true,
    title: Text("Apple Products"
        ""),
    actions: [
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        height: 30,
        width: 35,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(7.5),

        ),
        child: Text("7", style: TextStyle(color: Colors.white),),
      )
    ],
  ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
            height: 225,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/image_3.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Container(
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.1),
                  ]
                ),
              ),
              child: Column(
                children: [
                  //#lifestyle
                  Expanded(child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("Lifestyle safe", style:  TextStyle(color: Colors.white, fontSize: 30),
                  )),),
                 //ShopNow
                 Padding(padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                 child: MaterialButton(onPressed: (){},
                   minWidth: double.infinity,
                   height: 60,
                   color: Colors.white,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                   child: Text("Shop Now", style: TextStyle(fontSize: 15,color: Colors.black45),),
                     ),
                  ),
                ],
              ),
            ),
          ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ), itemCount: 10,
              itemBuilder: (context, index){
                return Container(

                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(10),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image_${index%5}.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(Icons.star_border_outlined, size: 35,color: Colors.yellow,),

                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
