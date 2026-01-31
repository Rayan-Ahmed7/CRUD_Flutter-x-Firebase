import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addEmployeesDetails(
    Map<String, dynamic> employeeInfoMap,
    String id,
  ) async{
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .set(employeeInfoMap);
  }
  Future<Stream<QuerySnapshot>>getEmployeeDetail()async{
    return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }
  Future updateEmployeDetail(String id,Map<String,dynamic> updateInfo)async{
    await FirebaseFirestore.instance.collection("Employee").doc(id).update(updateInfo);
  }
  Future deleteEmployeDetail(String id) async {
    await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .delete();
  }

}
