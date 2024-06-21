import 'package:cloud_firestore/cloud_firestore.dart';

class ChatServices {
  // instance of Firestore
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // get user stream
  Stream<QuerySnapshot> getUsersStream() {
    return firestore.collection('users').snapshots();
  }
}
