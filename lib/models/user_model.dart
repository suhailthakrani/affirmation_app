

class UserModel {
  String id = '';
  String name = "";
  String email = "";
  String group = "";

  UserModel.empty();

  UserModel.fromJSON(Map<String,dynamic> json){
    id = "${json["id"]??''}";
    name = json["name"]??"";
    email = json["email"]??"";
    group = '${json["group"]??""}';
  }


  Map<String,dynamic> toJson(){
    return {
      "id" : id,
      "name" : name,
      "email" : email,
      "group" : group,
      
    };
  }
}