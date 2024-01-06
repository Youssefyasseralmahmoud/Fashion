import 'package:get/get.dart';
import 'package:untitled4/comments/comment_service.dart';
import 'package:untitled4/config/user_information.dart';
import 'package:untitled4/models/comment.dart';
import 'package:untitled4/models/user.dart';
class Comment_controller extends GetxController{
  var inside =false.obs;
  var commentt='';
  var message;
  var addcommentstatus=false;
  void changecheckbox(){
    inside(!inside.value);

  }
  Comment_service service= new Comment_service();

  Future <void> onclickaddcomment(id) async{
    Comment comment = Comment(comment: commentt);
    addcommentstatus = await service.addusercomment(comment,id);
    message=service.message;
    if(message is List){
      String temp='';
      for(String s in message){
        temp+=s +'\n';
        message=temp;
      }
    }
  }
  Future<int>oncomment(id)async{
    var ide= await id;
    return ide;
  }
}