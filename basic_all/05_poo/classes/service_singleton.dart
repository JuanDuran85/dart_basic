class MyService {
  static final MyService _singleton = new MyService._internal(); // private static property to keep the previous instance of the class 

  factory MyService() { // 
    return _singleton;
  }

  MyService._internal(); // private constructor to generate instance

  String url = 'http://localhost:8080';
  String mockKey = 'mockKey';
}
