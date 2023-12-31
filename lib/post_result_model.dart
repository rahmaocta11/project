import'package:http/http.dart' as http;

class PostResult
{
  String id;
  String name;
  String job;
  String created;

  static var json;

  PostResult({
     this.id,  this.name,  this.job,  this.created});

    factory PostResult.createPostResult(Map<String, dynamic> object)
    {
      return PostResult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        created: object['created']
      );
    }
    static Future<PostResult> connectToAPI(String name, String job)
    async {
      String apiURL ="https://regres.in/api/user";

      var apiResult = await http.post(apiURL, body:{"name" : name, "job" : job});
      var jsonObject = json.decode(apiResult.body);

      return PostResult.createPostResult(jsonObject);
    }
  }