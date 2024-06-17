// Super class ၏ object များကို subclass ရဲ့ object များနှင့် အစားထိုးလို့ ရပြီး
// Program မှန်ကန်မှုကို မထိခိုက်စေရ

//This is super class
abstract class Bird {
  void fly();
}

// This is sub class
class Sparrow extends Bird {
  @override
  void fly() {
    print("Flying");
  }
}

//subclass
class BirdKalaouh extends Bird {
  // ငှက်ကုလားအုပ်သည် မပျံနိုင်သောကြောင့် Super class ရဲ့ လုပ်ဆောင်ပုံကို
  // ထိခိုက်သောကြောင့် LSP ကို ချိုးဖောက်နေသည်
  @override
  void fly() {
    throw Exception("can not fly");
  }
}

// အထက်ပါကုဒ်အား အောက်ပါအတိုင်းပြင်ဆင်နိုင်သည်

//This is super class
abstract class Bird2 {
  void move();
}

// This is sub class
class Sparrow2 extends Bird2 {
  @override
  void move() {
    print("Flying");
  }
}

//subclass
class BirdKalaouh2 extends Bird2 {
  @override
  void move() {
    print("running");
  }
}
