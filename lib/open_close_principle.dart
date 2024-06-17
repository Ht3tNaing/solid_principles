// class Shape {
//   final String type;

//   Shape({required this.type});
// }

// class AreaCalculator {
//   double calculate(Shape shape) {
//     switch (shape.type) {
//       case "circle":
//         return 3.14 * 3.14;
//       case "rectangle":
//         return 3.14 * 3.14 * 3.14;
//       default:
//         return 0;
//     }
//   }
// }

// အထက်ပါ ကုဒ် များသည် တိုးချဲ့နိုင်တော်လည်း မူလကုဒ်များကို ပြင်ဆင်ရန်လိုအပ်သောကြောင့်
// အမှားများဖြစ်ပေါ်နိုင်သည်
// Open/Close Principle အရ ကုဒ်များသည် တိုးချဲ့နိုင်ရမည် ပြင်ဆင်မှုမလိုအပ်ရ

abstract interface class Shape {
  double calculateArea();
}

class Circle implements Shape {
  final double radius;

  Circle({required this.radius});

  @override
  double calculateArea() {
    return 3.14 * radius;
  }
}

class Rectangle implements Shape {
  final double height;
  final double width;

  Rectangle({required this.height, required this.width});

  @override
  double calculateArea() {
    return height * width;
  }
}

class AreaCalculator {
  double area(Shape shape) {
    return shape.calculateArea();
  }
}
