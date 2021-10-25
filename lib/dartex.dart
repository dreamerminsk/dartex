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

class ProtoIdItem {
  int shortyIdx; //uint
  int returnTypeIdx; //uint
  int parametersOff; //uint

  ProtoIdItem(
      {required this.shortyIdx,
      required this.returnTypeIdx,
      required this.parametersOff});
}

class FieldIdItem {
  int classIdx; //ushort
  int typeIdx; //ushort
  int nameIdx; //uint

  FieldIdItem(
      {required this.classIdx, required this.typeIdx, required this.nameIdx});
}
