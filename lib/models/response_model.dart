class ResponseModel {
  String statusDescription = "";

  ResponseModel();
  ResponseModel.named({required this.statusDescription});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    statusDescription =  json["message"]??"";

  }
  @override
  String toString() {
    return 'ResponseModel{statusDescription: $statusDescription}';
  }
}