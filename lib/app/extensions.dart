
import 'constants.dart';

extension NonNullstring on String?{
  String orEmpty(){
    if(this==null){
      return Constants.EMPTY ;
    }else{
      return this!;
    }
  }

  bool get isValidatePassword{
    Pattern pattern = r'^.{6,}$';
    RegExp regex = RegExp(pattern.toString());
    return regex.hasMatch(this!);
  }
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this!);
  }
  bool get isValidName{
    if (this!.isEmpty) {
      return false;
    } else if (this!.length < 3 ||
        this!.length > 8 ||
        !RegExp('[a-zA-Zء-ي]').hasMatch(this!)) {
      return false;
    }
    return true;
  }
}

extension NonNullInteger on int?{
  int orZero(){
    if(this == null){
      return 0;
    }else{
      return this!;
    }
  }
}