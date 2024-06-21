import 'package:chat_app/services/auth/auth_services.dart';
import 'package:chat_app/services/chat/chat_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/custom_drawer.dart';
import '../components/user_tile.dart';
import 'chat_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});


  // instance of Chat & Auth Services
  final chatServices = ChatServices();
  final authServices = AuthServices();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),

          iconTheme: const IconThemeData(color: Colors.white),
        ),
        drawer: const CustomDrawer(),
        body: _buildUsersList()
    );
  }


   Widget _buildUsersList() {
     return StreamBuilder<QuerySnapshot>(
       stream: chatServices.getUsersStream(),
       builder: (context, snapshot) {
         // Error handling
         if (snapshot.hasError) {
           return const Center(child: Text('Error Occurred'));
         }

         // Loading indicator
         if (snapshot.connectionState == ConnectionState.waiting) {
           return const Center(child: CircularProgressIndicator());
         }

         // Show user list
         final data = snapshot.data;

         if (data == null || data.docs.isEmpty) {
           return const Center(child: Text('No users found'));
         }

         return ListView(
           children: data.docs.map((doc) {
             final userData = doc.data() as Map<String, dynamic>;
             return _buildUserListItem(userData, context );
           }).toList(),
         );
       },
     );
   }



   Widget _buildUserListItem(Map<String, dynamic> userData, BuildContext context) {


     // Check if the user's email is not the same as the logged-in user's email
     if (userData['email'] != authServices.getCurrentUser()!.email) {
       return UserTile(
         title: userData['email'],
         onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(receiverEmail: userData['email'],)));
         },
       );
     } else {
       // If it's the logged-in user's email, return an empty container
       return Container();
     }
   }
}
