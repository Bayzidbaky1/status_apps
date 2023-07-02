import 'package:best_status/helper/categoryHelper.dart';
import 'package:best_status/model/categoryModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/itemModel.dart';
import 'Details_page.dart';
import 'appStyle.dart/appStyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<ItemModel> display_list = List.from(datalist);
  // static List<ItemModel> datalist = [
  //   ItemModel('Alone',
  //       "https://www.shutterstock.com/image-vector/depression-man-line-icon-simple-260nw-1988723987.jpg"),
  //   ItemModel('Angry',
  //       "https://www.pngitem.com/pimgs/m/115-1153141_transparent-angry-emoji-png-angry-emoji-black-and.png"),
  //   ItemModel('Anniversary',
  //       "https://previews.123rf.com/images/decobrush/decobrush1711/decobrush171100018/90847162-champagne-bottle-colorful-icon,-champagne-bottle-opening.-holiday-symbol.-line-thin-icon,-vector-flat-illustration.jpg"),
  //   ItemModel('Attitude',
  //       "https://static.vecteezy.com/system/resources/previews/018/772/825/original/attitude-icon-design-free-vector.jpg"),
  //   ItemModel('Awesome',
  //       "https://media.istockphoto.com/id/1190347138/vector/call-me-hand-icon.jpg?s=612x612&w=0&k=20&c=7iyE5T0f6xVQMPNTMIb4AYendsxvCGoJldtklqEGxKI="),
  //   ItemModel('Awkware Moment',
  //       "https://thumbs.dreamstime.com/z/awkward-smile-emotion-icon-simple-line-outline-vector-expression-mood-icons-ui-ux-website-mobile-application-awkward-169336518.jpg"),
  //   ItemModel('Beard',
  //       "https://images.pond5.com/hipster-beard-hair-style-line-footage-224387175_iconl.jpeg"),
  //   ItemModel('Beautiful',
  //       "https://png.pngtree.com/png-clipart/20211028/ourlarge/pngtree-female-face-beauty-icon-png-image_3983458.png"),
  //   ItemModel('Best',
  //       "https://png.pngtree.com/png-clipart/20220531/original/pngtree-award-medal-icon-graphic-design-template-vector-isolated-png-image_7801829.png"),
  //   ItemModel('Bike',
  //       "https://www.shutterstock.com/image-vector/front-motorcycle-icon-trendy-flat-260nw-676054099.jpg"),
  //   ItemModel('Brithday',
  //       "https://previews.123rf.com/images/captainvector/captainvector1703/captainvector170303227/74093483-birthday-cake-icon.jpg"),
  //   ItemModel('Breakup',
  //       "https://previews.123rf.com/images/stockgiu/stockgiu1912/stockgiu191228020/136422219-broken-love-heart-romantic-breakup-relation-related-icon-vector-illustration-thick-line.jpg"),
  //   ItemModel('Brother',
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsxBW4_CD6rhpKc5zSrUDjzA-VoIPMltEB0VsNTxpPfHm4KlPlBJfWt-81m2X8FMdpjts&usqp=CAU"),
  //   ItemModel('Busy',
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8wmV59diW7cVizP6KPQdXLtKHFGj2KvO7O6L1f2itMtoDbmHQB1Hq9CyWnb3Zn1r0QTw&usqp=CAU"),
  //   ItemModel('Cheat',
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRClBnseK4MMdF9jzQmTw4LBdQgciMQoe17SA&usqp=CAU"),
  //   ItemModel('Childhood',
  //       "https://t4.ftcdn.net/jpg/01/96/95/33/360_F_196953309_MsZ5rQx3zzhirNVgiTOPrF3C9Q0DynEA.jpg"),
  //   ItemModel('Collage',
  //       "https://media.istockphoto.com/id/1268414555/vector/school-building-flat-line-icon-vector-outline-illustration-of-college-university-campus.jpg?s=612x612&w=0&k=20&c=ux8MyFc_fpScE5udSPtsBf_TzpnEZcpk6Whwg-xbqxU="),
  //   ItemModel('Cool',
  //       "https://thumbs.dreamstime.com/b/person-icon-line-style-man-symbol-flat-isolated-white-background-simple-avatar-abstract-black-user-sign-vector-illustration-156936114.jpg"),
  //   ItemModel('Creative',
  //       "https://thumbs.dreamstime.com/b/light-bulb-line-icon-bright-bulb-icon-vector-best-illustration-design-icon-best-line-design-icon-light-bulb-line-icon-bright-bulb-179695820.jpg"),
  //   ItemModel('Cute',
  //       "https://media.istockphoto.com/id/1223399802/vector/vector-of-hand-draw-or-sketch-of-a-pig-cute-pig-cheerful-pig-funny-pig.jpg?s=612x612&w=0&k=20&c=FOGdX4TzjSUlsRMtrx6q7kBK1DzKCeCoveHxHBd1Wbk="),
  //   ItemModel('Dance',
  //       "https://freepngimg.com/convert-png/46859-dancer-png-free-photo"),
  //   ItemModel('Emotional',
  //       "https://img.freepik.com/premium-vector/emotion-icon-lines-emoji-symbols_910989-797.jpg?w=2000"),
  //   ItemModel('Exam',
  //       "https://www.creativefabrica.com/wp-content/uploads/2021/04/22/Success-survey-icon-Graphics-11214176-1-580x386.jpg"),
  //   ItemModel('Facebook',
  //       "https://www.hipsthetic.com/wp-content/uploads/2019/05/black-circle-facebook-icon.jpg"),
  //   ItemModel('Family',
  //       "https://img.freepik.com/premium-vector/happy-family-icons_23-2147506164.jpg"),
  //   ItemModel('Father\'s Day',
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtMApU8QwlPdFCmhzZE6p33lA94UQyAojmteu56KEwf-wBNSGvRTltIngOk86CbWgEdEs&usqp=CAU"),
  //   ItemModel('Flirt',
  //       "https://www.48hourslogo.com/oss/works/2022/02/26/20314113629/116452_76400_ffeb7098-190f-46c2-8f7b-122fa6a214cf.jpg"),
  //   ItemModel('Food',
  //       "https://as2.ftcdn.net/v2/jpg/02/14/50/87/1000_F_214508796_EzM8B2nANyljFAepT1DIA5WETw1N64mA.jpg"),
  //   ItemModel('Friends',
  //       "https://png.pngtree.com/png-clipart/20200225/original/pngtree-team-or-friends-icon-simple-style-png-image_5264632.jpg"),
  //   ItemModel('Funny',
  //       "https://media.istockphoto.com/id/1272705933/vector/emoticon-cute-line-art-style.jpg?s=612x612&w=0&k=20&c=WUk9bMarnNxV7RkAqJGz2d3eAXlS1JY5ChxTkkgH19s="),
  //   ItemModel('Good',
  //       "https://thumb.ac-illust.com/df/dfa88af0ce0727155fdb62f050170cdc_t.jpeg"),
  //   ItemModel('Good Morning',
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGFwHP9_Tz88THNLbicGumv4q-EWA8zwBavg&usqp=CAU"),
  //   ItemModel('Good Night',
  //       "https://cdn.dribbble.com/users/812639/screenshots/3416777/shots_6-08.jpg"),
  //   ItemModel('Gym',
  //       "https://www.shutterstock.com/image-vector/gym-icon-fitness-vector-graphics-260nw-1365506174.jpg"),
  //   ItemModel('Happiness',
  //       "https://thumbs.dreamstime.com/b/ic%C3%B4ne-de-bonheur-collection-succ%C3%A8s-130959444.jpg"),
  //   ItemModel('Hate You',
  //       "https://image.spreadshirtmedia.com/image-server/v1/products/T1459A839PA3861PT28D1021635759W8601H10000/views/1,width=550,height=550,appearanceId=839,backgroundColor=F2F2F2/funny-quotes-cute-cat-head-i-hate-you-sticker.jpg"),
  //   ItemModel('Heart Touching',
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT-kdab1OQiKaWu53FhBcKdSkBREnZCAJbsFjfOlCl0l6cr_dD3hGZeDRLDSH_iFO3Vy4&usqp=CAU"),
  //   ItemModel('Heart Break',
  //       "https://static.vecteezy.com/system/resources/previews/002/275/667/original/simple-illustration-of-heart-icon-for-st-valentines-day-free-vector.jpg"),
  //   ItemModel('Husband',
  //       "https://img.freepik.com/premium-vector/couple-icon-family-icon-husband-wife-logo-vector-illustration_230920-1077.jpg?w=2000"),
  //   ItemModel('Inspiration',
  //       "https://www.shutterstock.com/image-vector/lightbulb-icon-creative-idea-logo-260nw-704261359.jpg"),
  //   ItemModel('Insult', "https://en.pimg.jp/079/768/122/1/79768122.jpg"),
  //   ItemModel('Life',
  //       "https://thumbs.dreamstime.com/b/quality-life-vector-icon-isolated-white-background-outline-thin-line-website-design-mobile-app-development-189444636.jpg"),
  //   ItemModel('Love',
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk8P70DSr1cJpoEe-rrv9oSrDIxDOARhX4e14HgIRWk6ginyhj1DDgPs4txYFkidF9NV0&usqp=CAU"),
  //   ItemModel('Miss You',
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk8YV6KERr41zwuUTxY2vghaj01u-v4_cArQ&usqp=CAU"),
  //   ItemModel('Mother\'s Day',
  //       "https://www.shutterstock.com/image-vector/mother-day-baby-logo-vector-260nw-2151457071.jpg"),
  //   ItemModel('Music',
  //       "https://t4.ftcdn.net/jpg/05/23/30/19/360_F_523301976_DS2HXfxNX6ctp7rwXXFJ9vsVjKSFqsxZ.jpg"),
  //   ItemModel('Relationship',
  //       "https://static.vecteezy.com/system/resources/previews/004/588/663/original/heart-in-hand-line-icon-outline-sign-linear-pictogram-isolated-on-white-health-love-and-relationship-symbol-logo-illustration-charity-and-donation-line-icon-concept-free-vector.jpg"),
  //   ItemModel('Romantic',
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa0kxmKXVp1oANEncHsT-UiMWfckm46pEEat-wN7R6c-mpWKJENOfw7vsweIvZ7RqpQGs&usqp=CAU"),
  //   ItemModel('Sad',
  //       "https://thumbs.dreamstime.com/b/sad-bad-mood-emoticon-icon-logo-vector-illustration-outline-style-sad-icon-178973570.jpg"),
  //   ItemModel('Selfie',
  //       "https://static.vecteezy.com/system/resources/previews/010/952/209/original/selfie-icon-illustration-symbol-design-vector.jpg"),
  //   ItemModel('Sick',
  //       "https://i.pinimg.com/originals/94/53/31/945331858cb7e9bada90a4d13a87a5e6.jpg"),
  //   ItemModel('Single',
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6o0YPgs_rJuISYISgbOVE3g4SvRzZ9qfpfA&usqp=CAU"),
  // ];

  // void updateList(String value) {
  //   setState(() {
  //     display_list = datalist
  //         .where((element) =>
  //             element.title!.toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }


  CategoryModel ? dataModel;
   bool isLoader = false;
  purseData()async{
    dataModel = await CategoryHelper().getData();
    if (dataModel != null) {
      setState(() {
        isLoader = true;
      });
    }

  }

  @override
  void initState() {
    purseData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Best Status', style: AppStyle.Apptitle),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.indigo,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              // onChanged: (value) => updateList(value),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.indigo,
                    size: 35,
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: dataModel!.data!=null
                  ?GridView.builder(
                      itemCount: dataModel!.data!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        childAspectRatio: 2 / 1.2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Get.to(() => DetailsPage(), arguments: [
                              {
                                "title": dataModel!.data![index].title,
                              },
                              {
                                "image": dataModel!.data![index].image,
                              }
                            ]);
                          },
                          child: Card(
                              shadowColor: Colors.pink,
                              elevation: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.black,
                                          Colors.indigo,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(dataModel!.data![index].title!,
                                          style: AppStyle.tile),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: CircleAvatar(
                                          radius: 32,
                                          backgroundImage: NetworkImage(
                                              dataModel!.data![index].image!),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        );
                      }):Center(
                      child: CircularProgressIndicator(color: Colors.indigo,)
                    )
                  
            )
          ],
        ),
      )),
    );
  }
}
