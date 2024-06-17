//  interface သည် client ၏ လိုအပ်သော method များကိုသာ မှီခိုရမည်

abstract interface class Worker {
  void eat();
  void work();
  // လက်ရှိ interface သည် Robot class အတွက် သက်ဆိုင်ရာ function များသာ
  // မှီခိုစေပြီး ISP ကိုချိုးဖောက်နေသည်
}

abstract interface class Workable {
  void work();
}

abstract interface class Eatable {
  void eat();
}

class Human implements Workable, Eatable {
  @override
  void eat() {
    print("Human is eating.");
  }

  @override
  void work() {
    print("Human is working.");
  }
}

class Robot implements Workable {
  @override
  void work() {
    print("Robot is working.");
  }
}
