library dartex;

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class StringIdItem {
  int stringDataOff; //uint

  StringIdItem({required this.stringDataOff});
}

class StringDataItem {
  int utf16Size; //uleb128
  int data; //ubyte[]

  StringDataItem({required this.utf16Size, required this.data});
}

class TypeIdItem {
  int descriptorIdx; //uint

  TypeIdItem({required this.descriptorIdx});
}
