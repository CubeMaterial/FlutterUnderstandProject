class CalcBmi{

  List<double> rangeList = [18.5, 22.9, 24.9, 29.9];
  List<String> bmiList = ['저체중', '정상체중', '과체중', '비만', '고도비만'];
   List<String> bmiImageList = [
    'bmi',
    'underweight',
    'normal',
    "risk",
    "overweight",
    'obese',
  ];
  late double _height;
  late double _weight;
  CalcBmi(double height, double weight)
  {
    _height = height / 100;
    _weight = weight;
  }

   (double, String, String) calcAction() {
    int bmiIndex = rangeList.length -1;
    String imageString = "";
    String bmiString = "";
    double bmi = double.parse((_weight / (_height * _height)).toStringAsFixed(1));
    if (rangeList[bmiIndex] < bmi) {

      return (bmi,  bmiList[bmiIndex+1], bmiImageList[bmiIndex+2]);
    }
    for (int i = 0; i < rangeList.length; i++) {
      if (bmi < rangeList[i]) {
        bmiIndex = i;
        break;
      }
    }
    bmiString = bmiList[bmiIndex];
    imageString = bmiImageList[bmiIndex+1];
    return (bmi,bmiString, imageString); 

    // return (bmiList[bmiIndex], bmiIndex, bmi);
  }

  (String, int, double) returnValue(double height, double weight) {
    int bmiIndex = rangeList.length - 1;
    double hightSquareRoot =
        (height / 100) * (height / 100); // 키를 cm에서 m로 전환한 후, 제곱근한 값
    double resultValue = (weight / hightSquareRoot); // bmi 공식에 대입한 값
    double bmiValue = double.parse(
      resultValue.toStringAsFixed(1),
    ); // 소수점을 2자리만 남기고 버린다.
    if (rangeList[bmiIndex] < bmiValue) {
      return (bmiList[bmiIndex], bmiIndex, bmiValue);
    }
    for (int i = 0; i < rangeList.length; i++) {
      if (bmiValue < rangeList[i]) {
        bmiIndex = i;
        break;
      }
    }

    return (bmiList[bmiIndex], bmiIndex, bmiValue);
  }


}

