

class UserModel {
  String uuid = "";
  String name = "";
  String email = "";
  String ageGroup = "";
  String occupation = "";
  String currentIncome = "";
  String desiredIncome = "";
  String desiredOccupation = "";
  String debtAmount = "";
  String debtType = "";
  String savingGoals = "";

  UserModel.empty();

  UserModel.fromJSON(Map<String,dynamic> json){
    uuid = "${json["uuid"]??''}";
    name = json["name"]??"";
    email = json["email"]??"";
    ageGroup = '${json["ageGroup"]??""}';
    currentIncome = json['currentIncome'] ?? "";
    debtAmount = json['debtAmount'] ?? "";
    debtType = json['debtType'] ?? "";
    desiredIncome = json['desiredIncome'] ?? "";
    desiredOccupation = json['desiredOccupation'] ?? "";
    email = json['email'] ?? "";
    name = json['name'] ?? "";
    occupation = json['occupation'] ?? "";
    savingGoals = json['savingGoals'] ?? "";
    uuid = json['uuid'] ?? "";
  }


  Map<String,dynamic> toJson(){
    return {
      'uuid': uuid,
      "name" : name,
      "email" : email,
      "ageGroup" : ageGroup,
      'currentIncome': currentIncome,
      'debtAmount': debtAmount,
      'debtType': debtType,
      'desiredIncome': desiredIncome,
      'desiredOccupation': desiredOccupation,
      'occupation': occupation,
      'savingGoals': savingGoals,
    };
  }
}