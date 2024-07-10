import 'package:chat_app/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/text-style.dart';
import '../services/auth/auth_services.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  void signOut(){
    final authServices = AuthServices();
    authServices.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Colors.grey.shade300,
      semanticLabel: 'Chat App',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
           children: [
             DrawerHeader(child:  Column(
               children: [
                 Icon(Icons.chat, color: Theme.of(context).colorScheme.primary, size: 60.h,),
                 Text('Chat App', style: headline4(context),)
               ],
             )),
             SizedBox(height: 50.h,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: ListTile(
                 title: Text('H O M E', style: headline5(context),),
                 leading: Icon(Icons.home_filled, color: Theme.of(context).colorScheme.primary,),
                 onTap: (){
                   Navigator.pop(context);
                 },
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: ListTile(
                 title: Text('S E T T I N G S', style: headline5(context),),
                 leading: Icon(Icons.settings, color: Theme.of(context).colorScheme.primary,),
                 onTap: (){
                   Navigator.pop(context);
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingPage()));
                 },
               ),
             ),
           ],
         ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
            child: ListTile(
              title: Text('L O G O U T', style: headline5(context),),
              leading: Icon(Icons.logout, color: Theme.of(context).colorScheme.primary,),
              onTap: (){
                signOut();
              },
            ),
          ),


        ],
      ),
    );
  }
}
