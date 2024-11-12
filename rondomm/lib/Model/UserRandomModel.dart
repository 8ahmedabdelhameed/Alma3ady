class Usermodel{
  List<dynamic> result;
  Usermodel({required this.result});

  factory Usermodel.fromjson(Map<String,dynamic>json){
    List<dynamic> fulldata=[];
    for(var i=0;i<5;i++){
      fulldata.add(json["results"][i]);
    }
    fulldata =fulldata.map(
          (us){
      return{
        "name":us["name"]["first"]+["name"]["last"],
        "email":us["email"],
        "image":us["picture"]["thumbnail"],
      };
    },).toList();
    return Usermodel(result: fulldata);
  }
}