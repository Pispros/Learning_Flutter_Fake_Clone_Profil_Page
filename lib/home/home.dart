

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  String title = "";

  HomePage(String title)
  {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
          leading: Icon(Icons.person),
        ),
        body: 
             Container(
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                child:Column(
                children: [
                  stackFront(size),
                  userName(size),
                  userDescription(size),
                  actionBtns(size),
                  userInfos(size),
                  friendList()
                ],
              ) ,
              ),
            )
         
    );

  }


  Stack stackFront(size)
  {
    return Stack(
      alignment: Alignment.topCenter,
    
      children: [

        Container(
          width: size.width,
          height: 270,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://images.pexels.com/photos/2007647/pexels-photo-2007647.jpeg?cs=srgb&dl=pexels-harsch-shivam-2007647.jpg&fm=jpg"),
                fit: BoxFit.cover,
              )
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 190),
            child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                  width: 250,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/profil.jpeg'),
                      fit: BoxFit.cover
                    ),
                    shape: BoxShape.circle,
                    //borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
              )
            )
              
          )
      ],
    );
  }

  Container userName(size)
  {
    return Container(
      height: 30,
      padding: EdgeInsets.only(top: 10),
      width: size.width,
      child: Text(
        "Pispros",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Container userDescription(size)
  {
    return Container(
      padding: EdgeInsets.all(10),
      width: size.width,
      child: Text(
        "This is a section for user own description... lorem ipsum... This is a section for user own description... lorem ipsum... This is a section for user own description... lorem ipsum...",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.w100,
        ),
      ),
    );
  }

  Container actionBtns(size)
  {
    final ButtonStyle myBtnStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 15,
        color: Colors.black
        ),
      );
    return Container(
       width: size.width,
       height: 60,
       //color: Colors.red,
       child: Row(
         mainAxisSize: MainAxisSize.max,
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
            ElevatedButton(
              style: myBtnStyle,
              onPressed: () {},
              child:  Container(
                  margin: EdgeInsets.all(15),
                  child: const Text(
                    "Modifier la description du profil",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                ),
              )    
            ),

            FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              child: const Icon(Icons.edit),
              backgroundColor: Colors.blue,
            ),

            FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              child: const Icon(Icons.icecream),
              backgroundColor: Colors.blue,
            ),
         ],
       ),
    );
  }

  Container userInfos(size)
  {
    return Container(
        width: size.width,
        child: Column(
          children: [
              Container(
                height: 40,
                padding: EdgeInsets.only(top: 20),
                width: size.width,
                child: Text(
                  "Â PROPOS DE MOI",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ),

              Container(
                height: 40,
                padding: EdgeInsets.only(top: 20),
                width: size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 9),
                      margin: EdgeInsets.only(right: 15, left: 15),
                      child:  Icon(Icons.home_max_outlined),
                    ),
                   
                    Text(
                      "Amitié 2 Dakar, Sénégal",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              Container(
                height: 40,
                padding: EdgeInsets.only(top: 20),
                width: size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 9),
                      margin: EdgeInsets.only(right: 15, left: 15),
                      child:  Icon(Icons.cases_rounded),
                    ),
                   
                    Text(
                      "Développeur web & mobile",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              Container(
                height: 40,
                padding: EdgeInsets.only(top: 20),
                width: size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 9),
                      margin: EdgeInsets.only(right: 15, left: 15),
                      child:  Icon(Icons.favorite),
                    ),
                   
                    Text(
                      "Célibataire endurci",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                child: Divider(),
              ),

              Container(
                height: 40,
                padding: EdgeInsets.only(top: 5),
                margin: EdgeInsets.only(bottom: 5),
                width: size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 9),
                      margin: EdgeInsets.only(right: 15, left: 15),
                      child:  Icon(Icons.person_search)
                    ),
                   
                    Text(
                      "Liste amis",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              
              
          ],
        ),
    );

    
  }

  Container friendList()
  {
    return Container(
          margin: EdgeInsets.only(bottom: 30, top: 5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
            children: [

                Container(
                  height: 270,
                  width: 220,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                            BoxShadow(
                            color: Colors.grey,
                            offset: Offset(7,7)
                          ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage("https://images.pexels.com/photos/4511372/pexels-photo-4511372.jpeg"),
                        fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                   )
                ),

                 Container(
                  height: 270,
                  width: 220,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                            BoxShadow(
                            color: Colors.grey,
                            offset: Offset(7,7)
                          ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage("https://images.pexels.com/photos/4511372/pexels-photo-4511372.jpeg"),
                        fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                   )
                ),

                 Container(
                  height: 270,
                  width: 220,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                            BoxShadow(
                            color: Colors.grey,
                            offset: Offset(7,7)
                          ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage("https://images.pexels.com/photos/4511372/pexels-photo-4511372.jpeg"),
                        fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                   )
                ),

                 Container(
                  height: 270,
                  width: 220,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                            BoxShadow(
                            color: Colors.grey,
                            offset: Offset(7,7)
                          ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage("https://images.pexels.com/photos/4511372/pexels-photo-4511372.jpeg"),
                        fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                   )
                ),

                 Container(
                  height: 270,
                  width: 220,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                            BoxShadow(
                            color: Colors.grey,
                            offset: Offset(7,7)
                          ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage("https://images.pexels.com/photos/4511372/pexels-photo-4511372.jpeg"),
                        fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                   )
                ),


            ],
          ),
          )
          
    );
  }

}

