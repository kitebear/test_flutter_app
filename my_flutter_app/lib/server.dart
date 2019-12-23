import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

Future _getByHttpClient() async {
  //接口地址
    const url="https://www.demo.com/api";

    //定义httpClient
    HttpClient client = new HttpClient();
    //定义request
    HttpClientRequest request = await client.getUrl(Uri.parse(url));
    //定义reponse
    HttpClientResponse response = await request.close();
    //respinse返回的数据，是字符串
    String responseBody = await response.transform(utf8.decoder).join();
    //关闭httpClient
    client.close();
    //字符串需要转化为JSON
    var json= jsonDecode(responseBody);
    return json;
}


Future _getByDartHttp() async {
  // 接口地址
 const url="https://www.demo.com/api";//获取接口的返回值
 final response = await http.get(url);
 //接口的返回值转化为JSON
 var json = jsonDecode(response.body); 
 return json;
}

Future _getByDio() async{

      // 接口地址
      const url="https://www.demo.com/api";

      //定义 Dio实例
      Dio dio = new Dio();
      //获取dio返回的Response
      Response response = await dio.get(url);
      //返回值转化为JSON
      var json=jsonDecode(response.data);
      return json;
}