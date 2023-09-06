import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:i_see_you/route_management/route_management.dart';
import 'package:i_see_you/utils/color_utils.dart';
import 'package:i_see_you/utils/image_utils.dart';
import 'package:i_see_you/utils/route_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';


String? route;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override

  Widget build(BuildContext context) {
    precacheImage(AssetImage(ImageUtils.splashImage), context);
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'I See You',
            theme: ThemeData(
              primarySwatch: primaryColorSwatch,
              fontFamily:'Nexa',
            ),
            //Default theme

            initialRoute: kSplashScreen,
            getPages: RouteManagement.getPages(),

            // initialBinding: ControllerBinding(),
          );
        }
    );
  }
}



// import 'package:flutter/material.dart';
//
// class MyScreen extends StatefulWidget {
//   @override
//   _MyScreenState createState() => _MyScreenState();
// }
//
// class _MyScreenState extends State<MyScreen> with SingleTickerProviderStateMixin {
//   TabController? _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _tabController!.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Screen'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: 20, // Replace with the actual item count
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text('Item $index'),
//                 );
//               },
//             ),
//             TabBar(
//               controller: _tabController,
//               tabs: [
//                 Tab(text: 'Tab 1'),
//                 Tab(text: 'Tab 2'),
//               ],
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.4,
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   Container(
//                     color: Colors.red,
//                     child: Center(child: Text('Tab 1 Content')),
//                   ),
//                   Container(
//                     color: Colors.blue,
//                     child: Center(child: Text('Tab 2 Content')),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: MyScreen(),
//   ));
// }
