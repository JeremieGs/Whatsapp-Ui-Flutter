import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DiscussionScreen extends StatefulWidget {
  const DiscussionScreen({super.key});

  @override
  State<DiscussionScreen> createState() => _DiscussionScreenState();
}

class _DiscussionScreenState extends State<DiscussionScreen>
    with SingleTickerProviderStateMixin {
  List calls=[
    {
      'name': 'CJ',
      'profile':
      "https://www.in-due-time.com/wp-content/uploads/2017/01/God-is-Good.jpg",
      'date':'Yesterday 10:34 pm',
      'type':'audio',
      'called':true,
      'answered':true,
    }, {
      'name': 'akouto',
      'profile':
      "https://i.pinimg.com/1200x/7d/15/e8/7d15e84e3b463ef002b9eb2b6f4e7212.jpg",
      'date':'Yesterday 06:45 pm',
      'type':'audio',
      'called':true,
      'answered':true,
    },
    {
      'name': 'akouto',
      'profile':
      "https://i.pinimg.com/1200x/7d/15/e8/7d15e84e3b463ef002b9eb2b6f4e7212.jpg",
      'date':'Yesterday 7:10 am',
      'type':'video',
      'called':false,
      'answered':false,
    },{
      'name': 'Jconception',
      'profile':
      "https://img.freepik.com/photos-premium/illustration-ballon-basket-dans-style-3d-concept-sport-futuriste-generation-ia_201606-2562.jpg",
      'date':'Sunday 12:32 am',
      'type':'audio',
      'called':true,
      'answered':false,
    },{
      'name': 'Richard',
      'profile':
      "https://i.pinimg.com/1200x/7d/15/e8/7d15e84e3b463ef002b9eb2b6f4e7212.jpg",
      'date':'Saturday 08:00 pm',
      'type':'video',
      'called':true,
      'answered':true,
    },{
      'name': 'akouto',
      'profile':
      "https://i.pinimg.com/1200x/7d/15/e8/7d15e84e3b463ef002b9eb2b6f4e7212.jpg",
      'date':'Saturday 02:41 pm',
      'type':'audio',
      'called':false,
      'answered':false,
    },{
      'name': 'heritier',
      'profile':
      "https://media.ouest-france.fr/v1/pictures/MjAyMDEyOWZlNzlmZTlmM2VmNzMxM2IzYjBlZDM4MjYxM2Y4OTg?width=1260&height=708&focuspoint=50%2C25&cropresize=1&client_id=bpeditorial&sign=87704e84993984ab6724c7852fa13b7ace4e91171f4c20adf921e675597b59de",
      'date':'Friday 03:05 pm',
      'type':'video',
      'called':true,
      'answered':true,
    },{
      'name': 'jeremie',
      'profile':
      "https://i.pinimg.com/1200x/7d/15/e8/7d15e84e3b463ef002b9eb2b6f4e7212.jpg",
      'date':'Friday 10:00 am',
      'type':'audio',
      'called':false,
      'answered':true,
    },{
      'name': 'meredite',
      'profile':
      "https://korii.slate.fr/sites/default/files/styles/1440x600/public/chris-ried-ieic5tq8ymk-unsplash.jpg",
      'date':'Tuesday 01:34 pm',
      'type':'audio',
      'called':true,
      'answered':true,
    },
  ];
  List channels = [
    {
      'name': 'FC Barcelona',
      'profile':
      'https://pbs.twimg.com/profile_images/1704160217167011840/VX3483VK_400x400.jpg',
      'last': 'Holaa everyone, Messi is comming Back in 2025!!!',
      'date': 'Yesterday',
      'type': 'image',
      'image':
      'https://s.france24.com/media/display/48615024-e4b0-11eb-9773-005056a90284/w:980/p:16x9/1bb7e4c7fba86598de2f5df9df91cc53fbc8e8c6.jpg'
    },
    {
      'name': 'Jconception',
      'profile':
      'https://global-uploads.webflow.com/619e15d781b21202de206fb5/620e250fa0d96c481cd26cdc_code-profiling-tools.jpeg',
      'last':
      'Il ya du nouveau!!! notre logiciel de gestion d\'entreprise est fin pret!!!',
      'date': 'Monday',
      'type': 'image',
      'image':
      'https://cdn.futura-sciences.com/buildsv6/images/largeoriginal/5/7/6/576df1d0de_128295_logiciel-c-carlos-muza-unsplash.jpg'
    },
    {
      'name': 'T DEV CLUBS',
      'profile':
      'https://miro.medium.com/v2/resize:fit:1033/0*sedLR7F4ZWsaG-Nu.png',
      'last':
      "Cette reunion est pour presenter le programme  Google developer Student Clubs , les objectifs et avantages d'en etre membre. Nous allons presenter l'equipe organisatrice du GDSC Université de Lomé. ",
      'date': '26 Nov',
      'type': 'image',
      'image':
      'https://s.france24.com/media/display/48615024-e4b0-11eb-9773-005056a90284/w:980/p:16x9/1bb7e4c7fba86598de2f5df9df91cc53fbc8e8c6.jpg'
    },
    {
      'name': 'WORLD WIDE WEB',
      'profile':
      'https://artoftesting.com/wp-content/uploads/2022/10/what-is-www.png',
      'last':
      'The World Wide Web is an information system that enables content sharing over the Internet through user-friendly ways meant to appeal to users beyond IT ...',
      'date': '24 Nov',
      'type': 'image',
      'image':
      'https://assets.weforum.org/article/image/NTFi2JjgtSnmzNq_uFpPF__Z6_HUQRDsb8xvSv3aw9k.jpg'
    },
  ];
  List discussions = [
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'text',
      'name': 'jeremie',
      'profile':
      "https://i.pinimg.com/1200x/7d/15/e8/7d15e84e3b463ef002b9eb2b6f4e7212.jpg",
      'date': '12/12/23',
      'send': true,
      'read': true
    },
    {
      'id': 1,
      'last': "Okay no problem. let's check it...",
      'type': 'text',
      'name': 'heritier',
      'profile':
      "https://media.ouest-france.fr/v1/pictures/MjAyMDEyOWZlNzlmZTlmM2VmNzMxM2IzYjBlZDM4MjYxM2Y4OTg?width=1260&height=708&focuspoint=50%2C25&cropresize=1&client_id=bpeditorial&sign=87704e84993984ab6724c7852fa13b7ace4e91171f4c20adf921e675597b59de",
      'date': '11/12/23',
      'send': false,
      'read': true
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'audio',
      'name': 'marc',
      'profile':
      "https://static3.depositphotos.com/1003352/159/i/450/depositphotos_1595581-stock-photo-mountain-lake.jpg",
      'date': '08/12/23',
      'send': true,
      'read': false
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'sticker',
      'name': 'CJ',
      'profile':
      "https://www.in-due-time.com/wp-content/uploads/2017/01/God-is-Good.jpg",
      'date': '08/12/23',
      'send': false,
      'read': true
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'sticker',
      'name': 'Benedicte',
      'profile':
      "https://media.gettyimages.com/id/1344645608/fr/vectoriel/cartes-de-v%C5%93ux-de-no%C3%ABl.jpg?s=612x612&w=gi&k=20&c=L9f0B_nX0CACZgHb30JFqUED4I6jQJ6akyc8IWNbRjY=",
      'date': '06/12/23',
      'send': true,
      'read': true
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'video',
      'name': 'Florence',
      'profile':
      "https://www.toureiffel.paris/themes/custom/tour_eiffel/img/picto_myGoogleBusiness_1.jpg",
      'date': '29/11/23',
      'send': false,
      'read': true
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'audio',
      'name': 'Kokou',
      'profile':
      "https://i.pinimg.com/1200x/7d/15/e8/7d15e84e3b463ef002b9eb2b6f4e7212.jpg",
      'date': '15/11/23',
      'send': false,
      'read': false
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'text',
      'name': 'Romuld',
      'profile':
      "https://www.shutterstock.com/image-photo/togo-flag-isolated-on-white-600nw-2165094873.jpg",
      'date': '02/11/23',
      'send': false,
      'read': true
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'image',
      'name': 'Marissa',
      'profile':
      "https://upload.wikimedia.org/wikipedia/fr/thumb/6/68/Logo_JO_d%27%C3%A9t%C3%A9_-_Paris_2024.svg/1200px-Logo_JO_d%27%C3%A9t%C3%A9_-_Paris_2024.svg.png",
      'date': '31/10/23',
      'send': true,
      'read': true
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'video',
      'name': 'Jconception',
      'profile':
      "https://img.freepik.com/photos-premium/illustration-ballon-basket-dans-style-3d-concept-sport-futuriste-generation-ia_201606-2562.jpg",
      'date': '24/10/23',
      'send': false,
      'read': false
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'text',
      'name': 'meredite',
      'profile':
      "https://korii.slate.fr/sites/default/files/styles/1440x600/public/chris-ried-ieic5tq8ymk-unsplash.jpg",
      'date': '12/10/23',
      'send': false,
      'read': true
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'sticker',
      'name': 'akouto',
      'profile':
      "https://i.pinimg.com/1200x/7d/15/e8/7d15e84e3b463ef002b9eb2b6f4e7212.jpg",
      'date': '12/10/23',
      'send': false,
      'read': true
    },
    {
      'id': 1,
      'last': "hi,how  are you ?",
      'type': 'image',
      'name': 'Richard',
      'profile':
      "https://i.pinimg.com/1200x/7d/15/e8/7d15e84e3b463ef002b9eb2b6f4e7212.jpg",
      'date': '05/10/23',
      'send': true,
      'read': false
    },
  ];
  late TabController _tabController;
  int index = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    int currentIndex = _tabController.index;
    setState(() {
      index = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double screenRatio = screenWidth / screenHeight;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Theme.of(context).appBarTheme.foregroundColor,
              indicatorWeight: 4,
              controller: _tabController,
              tabs: [
                Tab(
                  child: Icon(
                    Icons.groups,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Text(
                        "Chat",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: screenWidth * 0.04),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Text(
                          "11",
                          style: GoogleFonts.poppins(
                              color: Theme.of(context).colorScheme.tertiary),
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Text(
                    "Update",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: screenWidth * 0.04),
                  ),
                ),
                Tab(
                  child: Text(
                    "Calls",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: screenWidth * 0.04),
                  ),
                ),
              ]),
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Whatsapp",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: screenWidth * 0.05),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.photo_camera,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: screenWidth * 0.05,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: screenWidth * 0.05,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            TabBarView(controller: _tabController, children: [
              CustomScrollView(
                  slivers:[
                    SliverToBoxAdapter(
                        child:Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                              children:[
                                Container(
                                  decoration:BoxDecoration(
                                    border:Border(
                                        bottom: BorderSide(color:Theme.of(context).colorScheme.onSurface)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom:10),
                                    child: Row(
                                        children:[
                                          Stack(
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration:BoxDecoration(
                                                      color:Colors.grey[350],
                                                      borderRadius:BorderRadius.all(Radius.circular(10))
                                                  ),
                                                  child:Icon(Icons.groups,color:Colors.white,size:screenWidth*0.08)
                                              ),
                                              Positioned(
                                                bottom:0,
                                                right:0,
                                                child: Container(
                                                    decoration:BoxDecoration(
                                                        color:Theme.of(context).colorScheme.tertiary,
                                                        shape:BoxShape.circle
                                                    ),
                                                    child:Icon(Icons.add,color:Colors.white)
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(width:20),
                                          Text("New Community",style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.primary,fontWeight:FontWeight.w400,fontSize:screenWidth*0.04)),
                                        ]
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration:BoxDecoration(
                                    border:Border(
                                        bottom: BorderSide(color:Theme.of(context).colorScheme.onSurface)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom:10,top:10),
                                    child: Row(
                                        children:[
                                          Container(
                                              padding: EdgeInsets.all(10),
                                              decoration:BoxDecoration(
                                                  color:Colors.grey[350],
                                                  borderRadius:BorderRadius.all(Radius.circular(10))
                                              ),
                                              child:Icon(Icons.groups,color:Colors.white,size:screenWidth*0.08)
                                          ),
                                          SizedBox(width:20),
                                          Text("Google Devs",style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.primary,fontWeight:FontWeight.w400,fontSize:screenWidth*0.04)),
                                        ]
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom:10,top:10),
                                    child: Row(
                                        crossAxisAlignment:CrossAxisAlignment.start,
                                        children:[
                                          Container(
                                              padding: EdgeInsets.all(10),
                                              decoration:BoxDecoration(
                                                  color:Colors.green.shade100,
                                                  borderRadius:BorderRadius.all(Radius.circular(10))
                                              ),
                                              child:Icon(Icons.notification_important,color:Theme.of(context).colorScheme.tertiary,size:screenWidth*0.06)
                                          ),
                                          SizedBox(width:10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[
                                                Container(
                                                  width:screenWidth*0.75,
                                                  child: Row(
                                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                      children:[
                                                        Text("Announcments",style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.primary,fontWeight:FontWeight.w400,fontSize:screenWidth*0.04)),
                                                        Text("11/27/23",style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.secondary,fontWeight:FontWeight.w400,fontSize:screenWidth*0.035)),
                                                      ]
                                                  ),
                                                ),
                                                Text("Mr Bean added the goup  mivakpo",style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.secondary,fontWeight:FontWeight.w400,fontSize:screenWidth*0.035)),
                                              ]
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                                SizedBox(height:10)
,                                Container(
                                  decoration:BoxDecoration(
                                    border:Border(
                                        bottom: BorderSide(color:Theme.of(context).colorScheme.onSurface)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom:10,top:10),
                                    child: Row(
                                        crossAxisAlignment:CrossAxisAlignment.center,
                                        children:[
                                          ClipOval(
                                            child: CachedNetworkImage(
                                              imageUrl: 'https://phototrend.fr/wp-content/uploads/2014/12/jpeg-1-770x480.jpg',
                                              placeholder: (context, url) =>
                                              const Center(
                                                  child:
                                                  CircularProgressIndicator(
                                                    color: Colors.white,
                                                  )),
                                              errorWidget: (context, url,
                                                  error) =>
                                              const Icon(Icons.error),
                                              width: screenWidth * 0.15,
                                              height: screenWidth * 0.15,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(width:10),
                                          Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[
                                                Container(
                                                  width:screenWidth*0.7,
                                                  child: Row(
                                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                      children:[
                                                        Text("Discussion 23-24",style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.primary,fontWeight:FontWeight.w400,fontSize:screenWidth*0.04)),
                                                        Text("11/27/23",style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.secondary,fontWeight:FontWeight.w400,fontSize:screenWidth*0.035)),
                                                      ]
                                                  ),
                                                ),
                                                Text("AKP : ok pas de soucis 👍",style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.secondary,fontWeight:FontWeight.w400,fontSize:screenWidth*0.035)),
                                              ]
                                          )
                                        ]
                                    ),
                                  ),
                                ),
                                Row(
                                  children:[
                                    Icon(Icons.arrow_forward_ios_outlined,color:Theme.of(context).colorScheme.secondary),
                                    SizedBox(width:20),
                                    Text("View all",style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.secondary,fontSize:screenWidth*0.04))
                                  ]
                                )

                              ]
                          ),
                        )
                    )
                  ]
              ),
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.archive_outlined,
                                    color:
                                    Theme.of(context).colorScheme.tertiary,
                                    size: screenWidth * 0.07,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Archived",
                                    style: GoogleFonts.poppins(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: screenWidth * 0.05,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Text(
                                "6",
                                style: GoogleFonts.poppins(
                                    color:
                                    Theme.of(context).colorScheme.tertiary,
                                    fontSize: screenWidth * 0.04),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: List.generate(
                              discussions.length,
                                  (index) => Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          ClipOval(
                                            child: CachedNetworkImage(
                                              imageUrl: discussions[index]
                                              ['profile'],
                                              placeholder: (context, url) =>
                                              const Center(
                                                  child:
                                                  CircularProgressIndicator(
                                                    color: Colors.white,
                                                  )),
                                              errorWidget: (context, url,
                                                  error) =>
                                              const Icon(Icons.error),
                                              width: screenWidth * 0.15,
                                              height: screenWidth * 0.15,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                discussions[index]['name'],
                                                style: GoogleFonts.poppins(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize:
                                                    screenWidth * 0.04),
                                              ),
                                              discussions[index]['type'] ==
                                                  "text"
                                                  ? Row(
                                                children: [
                                                  discussions[index][
                                                  'send'] ==
                                                      false
                                                      ? Container()
                                                      : discussions[index]
                                                  [
                                                  'send'] ==
                                                      true
                                                      ? Icon(
                                                    MdiIcons
                                                        .checkAll,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .surface,
                                                    size: screenWidth *
                                                        0.04,
                                                  )
                                                      : Icon(
                                                    MdiIcons
                                                        .checkAll,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    size: screenWidth *
                                                        0.04,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    discussions[index]
                                                    ['last'],
                                                    style: GoogleFonts.poppins(
                                                        color: Theme.of(
                                                            context)
                                                            .colorScheme
                                                            .secondary,
                                                        fontSize:
                                                        screenWidth *
                                                            0.035),
                                                  ),
                                                ],
                                              )
                                                  : discussions[index]
                                              ['type'] ==
                                                  "sticker"
                                                  ? Row(
                                                children: [
                                                  discussions[index]
                                                  [
                                                  'send'] ==
                                                      false
                                                      ? Container()
                                                      : discussions[index]['send'] ==
                                                      true
                                                      ? Icon(
                                                    MdiIcons.checkAll,
                                                    color:
                                                    Theme.of(context).colorScheme.surface,
                                                    size:
                                                    screenWidth * 0.04,
                                                  )
                                                      : Icon(
                                                    MdiIcons.checkAll,
                                                    color:
                                                    Theme.of(context).colorScheme.secondary,
                                                    size:
                                                    screenWidth * 0.04,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Icon(
                                                    MdiIcons
                                                        .sticker,
                                                    color: Theme.of(
                                                        context)
                                                        .colorScheme
                                                        .secondary,
                                                    size:
                                                    screenWidth *
                                                        0.04,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    'Sticker',
                                                    style: GoogleFonts.poppins(
                                                        color: Theme.of(
                                                            context)
                                                            .colorScheme
                                                            .secondary,
                                                        fontSize:
                                                        screenWidth *
                                                            0.04),
                                                  )
                                                ],
                                              )
                                                  : discussions[index][
                                              'type'] ==
                                                  "image"
                                                  ? Row(
                                                children: [
                                                  discussions[index]['send'] ==
                                                      false
                                                      ? Container()
                                                      : discussions[index]['send'] ==
                                                      true
                                                      ? Icon(
                                                    MdiIcons.checkAll,
                                                    color: Theme.of(context).colorScheme.surface,
                                                    size: screenWidth * 0.04,
                                                  )
                                                      : Icon(
                                                    MdiIcons.checkAll,
                                                    color: Theme.of(context).colorScheme.secondary,
                                                    size: screenWidth * 0.04,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .image,
                                                    color: Theme.of(
                                                        context)
                                                        .colorScheme
                                                        .secondary,
                                                    size: screenWidth *
                                                        0.04,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    'Photo',
                                                    style: GoogleFonts.poppins(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .secondary,
                                                        fontSize:
                                                        screenWidth * 0.04),
                                                  )
                                                ],
                                              )
                                                  : discussions[index]
                                              [
                                              'type'] ==
                                                  "video"
                                                  ? Row(
                                                children: [
                                                  discussions[index]['send'] ==
                                                      false
                                                      ? Container()
                                                      : discussions[index]['send'] == true
                                                      ? Icon(
                                                    MdiIcons.checkAll,
                                                    color: Theme.of(context).colorScheme.surface,
                                                    size: screenWidth * 0.04,
                                                  )
                                                      : Icon(
                                                    MdiIcons.checkAll,
                                                    color: Theme.of(context).colorScheme.secondary,
                                                    size: screenWidth * 0.04,
                                                  ),
                                                  SizedBox(
                                                    width:
                                                    3,
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .video_camera_back_rounded,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    size: screenWidth *
                                                        0.04,
                                                  ),
                                                  SizedBox(
                                                    width:
                                                    3,
                                                  ),
                                                  Text(
                                                    'Video',
                                                    style: GoogleFonts.poppins(
                                                        color: Theme.of(context).colorScheme.secondary,
                                                        fontSize: screenWidth * 0.04),
                                                  )
                                                ],
                                              )
                                                  : discussions[index]
                                              [
                                              'type'] ==
                                                  "audio"
                                                  ? Row(
                                                children: [
                                                  discussions[index]['send'] == false
                                                      ? Container()
                                                      : discussions[index]['send'] == true
                                                      ? Icon(
                                                    MdiIcons.checkAll,
                                                    color: Theme.of(context).colorScheme.surface,
                                                    size: screenWidth * 0.04,
                                                  )
                                                      : Icon(
                                                    MdiIcons.checkAll,
                                                    color: Theme.of(context).colorScheme.secondary,
                                                    size: screenWidth * 0.04,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Icon(
                                                    Icons.mic,
                                                    color: Theme.of(context).colorScheme.tertiary,
                                                    size: screenWidth * 0.04,
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    '3:23',
                                                    style: GoogleFonts.poppins(color: Theme.of(context).colorScheme.secondary, fontSize: screenWidth * 0.04),
                                                  )
                                                ],
                                              )
                                                  : Text(
                                                discussions[index]
                                                [
                                                'last'],
                                                style: GoogleFonts.poppins(
                                                    color: Theme.of(context).colorScheme.secondary,
                                                    fontSize: screenWidth * 0.035),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            discussions[index]['date'],
                                            style: GoogleFonts.poppins(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontSize:
                                                screenWidth * 0.035),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .tertiary,
                                                shape: BoxShape.circle),
                                            child: Text(
                                              "2",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Status",
                                    style: GoogleFonts.poppins(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: screenWidth * 0.05,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color:
                                    Theme.of(context).colorScheme.secondary,
                                  )
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSurface))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(5.0),
                                                child: Container(
                                                  child: ClipOval(
                                                    child: CachedNetworkImage(
                                                      imageUrl:
                                                      'https://w0.peakpx.com/wallpaper/736/168/HD-wallpaper-happy-birtay-jesus-blue-neon-lights-jesus-name-creative-jesus-happy-birtay-jesus-birtay-popular-american-male-names-with-jesus-name-jesus.jpg',
                                                      placeholder: (context,
                                                          url) =>
                                                      const Center(
                                                          child:
                                                          CircularProgressIndicator(
                                                            color: Colors.white,
                                                          )),
                                                      errorWidget: (context,
                                                          url, error) =>
                                                      const Icon(
                                                          Icons.error),
                                                      width: screenWidth * 0.17,
                                                      height:
                                                      screenWidth * 0.17,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                  bottom: 1,
                                                  right: 0,
                                                  child: Container(
                                                    padding: EdgeInsets.all(2),
                                                    decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .background,
                                                        shape: BoxShape.circle),
                                                    child: Container(
                                                      padding:
                                                      EdgeInsets.all(2),
                                                      decoration: BoxDecoration(
                                                          color:
                                                          Theme.of(context)
                                                              .colorScheme
                                                              .tertiary,
                                                          shape:
                                                          BoxShape.circle),
                                                      child: Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                          Text(
                                            "My status",
                                            style: GoogleFonts.poppins(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: List.generate(
                                            discussions.length,
                                                (index) => Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                  EdgeInsets.all(5),
                                                  child: Container(
                                                    child: ClipOval(
                                                      child:
                                                      CachedNetworkImage(
                                                        imageUrl:
                                                        discussions[
                                                        index]
                                                        ['profile'],
                                                        placeholder: (context,
                                                            url) =>
                                                        const Center(
                                                            child:
                                                            CircularProgressIndicator(
                                                              color:
                                                              Colors.white,
                                                            )),
                                                        errorWidget: (context,
                                                            url,
                                                            error) =>
                                                        const Icon(Icons
                                                            .error),
                                                        width: screenWidth *
                                                            0.17,
                                                        height:
                                                        screenWidth *
                                                            0.17,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  discussions[index]
                                                  ['name'],
                                                  style:
                                                  GoogleFonts.poppins(
                                                      color: Theme.of(
                                                          context)
                                                          .colorScheme
                                                          .primary),
                                                )
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Channels",
                                          style: GoogleFonts.poppins(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: screenWidth * 0.05,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.add,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          size: screenWidth * 0.06,
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: List.generate(
                                        channels.length,
                                            (index) => Padding(
                                          padding:
                                          const EdgeInsets.all(20.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color: Theme.of(
                                                            context)
                                                            .colorScheme
                                                            .onSurface))),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    ClipOval(
                                                      child:
                                                      CachedNetworkImage(
                                                        imageUrl:
                                                        channels[index]
                                                        ['profile'],
                                                        placeholder: (context,
                                                            url) =>
                                                        const Center(
                                                            child:
                                                            CircularProgressIndicator(
                                                              color:
                                                              Colors.white,
                                                            )),
                                                        errorWidget: (context,
                                                            url,
                                                            error) =>
                                                        const Icon(Icons
                                                            .error),
                                                        width: screenWidth *
                                                            0.1,
                                                        height:
                                                        screenWidth *
                                                            0.1,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      channels[index]
                                                      ['name'],
                                                      style: GoogleFonts.poppins(
                                                          color: Theme.of(
                                                              context)
                                                              .colorScheme
                                                              .primary,
                                                          fontWeight:
                                                          FontWeight
                                                              .bold,
                                                          fontSize:
                                                          screenWidth *
                                                              0.04),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      top: 10,
                                                      bottom: 20),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Container(
                                                        width: screenWidth *
                                                            0.7,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              channels[
                                                              index]
                                                              ['last'],
                                                              style: GoogleFonts.poppins(
                                                                  color: Theme.of(
                                                                      context)
                                                                      .colorScheme
                                                                      .secondary,
                                                                  fontSize:
                                                                  screenWidth *
                                                                      0.04),
                                                            ),
                                                            Text(
                                                              channels[
                                                              index]
                                                              ['date'],
                                                              style: GoogleFonts.poppins(
                                                                  color: Theme.of(
                                                                      context)
                                                                      .colorScheme
                                                                      .secondary,
                                                                  fontSize:
                                                                  screenWidth *
                                                                      0.03),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                        BorderRadius
                                                            .all(Radius
                                                            .circular(
                                                            10)),
                                                        child:
                                                        CachedNetworkImage(
                                                          imageUrl:
                                                          channels[
                                                          index]
                                                          ['image'],
                                                          placeholder: (context,
                                                              url) =>
                                                          const Center(
                                                              child:
                                                              CircularProgressIndicator(
                                                                color: Colors
                                                                    .white,
                                                              )),
                                                          errorWidget: (context,
                                                              url,
                                                              error) =>
                                                          const Icon(Icons
                                                              .error),
                                                          width:
                                                          screenWidth *
                                                              0.17,
                                                          height:
                                                          screenWidth *
                                                              0.17,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Find channels",
                                          style: GoogleFonts.poppins(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: screenWidth * 0.045),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "See all",
                                              style: GoogleFonts.poppins(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .tertiary,
                                                  fontSize: screenWidth * 0.04,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(Icons.arrow_forward_ios,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .tertiary)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(20),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(
                                              channels.length,
                                                  (index) => Padding(
                                                padding:
                                                const EdgeInsets.all(
                                                    8.0),
                                                child: Container(
                                                  padding:
                                                  EdgeInsets.all(20),
                                                  width: screenWidth * 0.4,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Theme.of(
                                                            context)
                                                            .colorScheme
                                                            .onSurface,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius
                                                              .circular(
                                                              20))),
                                                  child: Column(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          ClipOval(
                                                            child:
                                                            CachedNetworkImage(
                                                              imageUrl: channels[
                                                              index]
                                                              [
                                                              'profile'],
                                                              placeholder: (context,
                                                                  url) =>
                                                              const Center(
                                                                  child:
                                                                  CircularProgressIndicator(
                                                                    color: Colors
                                                                        .white,
                                                                  )),
                                                              errorWidget: (context,
                                                                  url,
                                                                  error) =>
                                                              const Icon(
                                                                  Icons
                                                                      .error),
                                                              width:
                                                              screenWidth *
                                                                  0.2,
                                                              height:
                                                              screenWidth *
                                                                  0.2,
                                                              fit: BoxFit
                                                                  .fill,
                                                            ),
                                                          ),
                                                          Positioned(
                                                              bottom: 0,
                                                              right: 0,
                                                              child: Container(
                                                                  decoration: BoxDecoration(
                                                                      color: Theme.of(context)
                                                                          .colorScheme
                                                                          .background,
                                                                      shape: BoxShape
                                                                          .circle),
                                                                  child: Icon(
                                                                      Icons
                                                                          .verified,
                                                                      color: Colors
                                                                          .green,
                                                                      size: screenWidth *
                                                                          0.08)))
                                                        ],
                                                      ),
                                                      SizedBox(height: 10),
                                                      Text(
                                                        channels[index]
                                                        ['name'],
                                                        style: GoogleFonts.poppins(
                                                            color: Theme.of(
                                                                context)
                                                                .colorScheme
                                                                .primary,
                                                            fontSize:
                                                            screenWidth *
                                                                0.04),
                                                        overflow:
                                                        TextOverflow
                                                            .ellipsis,
                                                      ),
                                                      SizedBox(height: 10),
                                                      Container(
                                                          padding: EdgeInsets
                                                              .only(
                                                              left: 30,
                                                              right: 30,
                                                              top: 5,
                                                              bottom:
                                                              5),
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .green
                                                                  .shade100,
                                                              borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      50))),
                                                          child: Text(
                                                            "Follow",
                                                            style: GoogleFonts.poppins(
                                                                color: Theme.of(
                                                                    context)
                                                                    .colorScheme
                                                                    .tertiary,
                                                                fontSize:
                                                                screenWidth *
                                                                    0.035),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              )),
                                        ),
                                      ))
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.tertiary,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.link,
                                  size: screenWidth * 0.07,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Create call link",
                                    style: GoogleFonts.poppins(
                                        color:
                                        Theme.of(context).colorScheme.primary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth * 0.04),
                                  ),
                                  Text(
                                    "Share link for your whatsapp call",
                                    style: GoogleFonts.poppins(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontSize: screenWidth * 0.04),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text("Recents",style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.primary,fontSize: screenWidth*0.05,fontWeight: FontWeight.bold)),
                          SingleChildScrollView(
                            child: Column(children: List.generate(calls.length, (index) => Padding(
                              padding: const EdgeInsets.only(top:10,bottom:10),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        ClipOval(
                                          child:
                                          CachedNetworkImage(
                                            imageUrl: calls[
                                            index]
                                            [
                                            'profile'],
                                            placeholder: (context,
                                                url) =>
                                            const Center(
                                                child:
                                                CircularProgressIndicator(
                                                  color: Colors
                                                      .white,
                                                )),
                                            errorWidget: (context,
                                                url,
                                                error) =>
                                            const Icon(
                                                Icons
                                                    .error),
                                            width:
                                            screenWidth *
                                                0.15,
                                            height:
                                            screenWidth *
                                                0.15,
                                            fit: BoxFit
                                                .fill,
                                          ),
                                        ),
                                        SizedBox(width:10),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            calls[index]['answered']==true?Text(discussions[index]['name'],style: GoogleFonts.poppins(color: Theme.of(context).colorScheme.primary,fontWeight:FontWeight.w400,fontSize:screenWidth*0.04),):Text(discussions[index]['name'],style: GoogleFonts.poppins(color: Colors.red,fontWeight:FontWeight.w400,fontSize:screenWidth*0.04),),
                                            Row(
                                                children:[
                                                  calls[index]['called']==true?(calls[index]['answered']==true?Icon(Icons.call_made,color:Colors.green):Icon(Icons.call_made,color:Colors.red)):(calls[index]['answered']==true?Icon(Icons.call_received,color:Colors.green):Icon(Icons.call_received,color:Colors.red)),
                                                  Text(calls[index]['date'],style:GoogleFonts.poppins(color:Theme.of(context).colorScheme.secondary))]
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Icon(Icons.call,color:Theme.of(context).colorScheme.tertiary)
                                  ],
                                ),
                              ),
                            ))),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ]),
            index == 2
                ? Positioned(
                bottom: 10,
                right: 10,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xffe0fdf1),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: Icon(
                        Icons.edit,
                        color: Color(0xff007f69),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0xff007f69),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: Icon(
                        Icons.photo_camera,
                        color: Theme.of(context).colorScheme.background,
                      ),
                    ),
                  ],
                ))
                : index == 1
                ? Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color(0xff007f69),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Icon(
                    Icons.chat,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ))
                : index == 3
                ? Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color(0xff007f69),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Icon(
                    Icons.add_ic_call,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ))
                : Container()
          ],
        ),
      ),
    );
  }
}

class CircleDividerPainter extends CustomPainter {
  final int subdivisions;

  CircleDividerPainter(this.subdivisions);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    double radius = size.width / 2;
    double centerX = size.width / 2;
    double centerY = size.height / 2;

    double angle = (2 * pi) / subdivisions;

    for (int i = 0; i < subdivisions; i++) {
      double startAngle = i * angle;
      double endAngle = (i + 1) * angle;

      canvas.drawArc(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
        startAngle,
        endAngle - startAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
