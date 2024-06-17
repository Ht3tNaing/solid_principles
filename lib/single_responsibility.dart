class UserManager {
  bool authUser(String mail, String pass) {
    return true;
  }

  void updateProfile(String name) {
    print("User Name $name updated.");
  }

  void updateBd(String bd) {
    print("User Name $bd updated.");
  }

  void deleteAccount() {
    print("Delete account.");
  }
}

// UserManager class သည် method အစုံရောနေတာမို့ Single Responsibility Principle နိယာမ ကို ချိုးဖောက်နေသည်
// Class တစ်ခုသည် တာ၀န်တစ်ခုသာ ဆောင်ရွက်သင့်သည်
// SRP != single job , သက်ဆိုင်ရာတာဝန်ကိုသာ ထမ်းဆောင်သင့်သည် 

class AuthManager {
  bool authUser(String mail, String pass) {
    return true;
  }
}

class ProfileManager {
  void updateProfile(String name) {
    print("User Name $name updated.");
  }
   void updateBd(String bd) {
    print("User Name $bd updated.");
  }

}

class AccountManager {
  void deleteAccount() {
    print("Delete account.");
  }
}
