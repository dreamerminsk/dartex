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

class MethodIdItem {
  int classIdx; //ushort
  int protoIdx; //ushort
  int nameIdx; //uint

  MethodIdItem(
      {required this.classIdx, required this.protoIdx, required this.nameIdx});
}

class ClassDefItem {
  int classIdx; //uint
  int accessFlags; //uint
  int superclassIdx; //uint
  int interfacesOff; //uint
  int sourceFileIdx; //uint
  int annotationsOff; //uint
  int classDataOff; //uint
  int staticValuesOff; //uint

  ClassDefItem(
      {required this.classIdx,
      required this.accessFlags,
      required this.superclassIdx,
      required this.interfacesOff,
      required this.sourceFileIdx,
      required this.annotationsOff,
      required this.classDataOff,
      required this.staticValuesOff});
}

class CallSiteIdItem {
  int callSiteOff; //uint

  CallSiteIdItem({required this.callSiteOff});
}

//encoded_array_item
class CallSiteItem {
  CallSiteItem();
}

class MethodHandleItem {
  int methodHandleType; //ushort
  int unused; //ushort
  int fieldOrMethodId; //ushort
  int unused2; //ushort

  MethodHandleItem(
      {required this.methodHandleType,
      required this.unused,
      required this.fieldOrMethodId,
      required this.unused2});
}

class ClassDataItem {
  int staticFieldsSize; //uleb128
  int instanceFieldsSize; //uleb128
  int directMethodsSize; //uleb128
  int virtualMethodsSize; //uleb128
  List<EncodedField> staticFields; //encoded_field[static_fields_size]
  List<EncodedField> instanceFields; //encoded_field[instance_fields_size]
  List<EncodedMethod> directMethods; //encoded_method[direct_methods_size]
  List<EncodedMethod> virtualMethods; //encoded_method[virtual_methods_size]

  ClassDataItem(
      {required this.staticFieldsSize,
      required this.instanceFieldsSize,
      required this.directMethodsSize,
      required this.virtualMethodsSize,
      required this.staticFields,
      required this.instanceFields,
      required this.directMethods,
      required this.virtualMethods});
}

class EncodedField {
  int fieldIdxDiff; //uleb128
  int accessFlags; //uleb128

  EncodedField({required this.fieldIdxDiff, required this.accessFlags});
}

class EncodedMethod {
  int methodIdxDiff; //uleb128
  int accessFlags; //uleb128
  int codeOff; //uleb128

  EncodedMethod(
      {required this.methodIdxDiff,
      required this.accessFlags,
      required this.codeOff});
}

class TypeList {
  int size; //uint
  List<TypeItem> list; //type_item[size]

  TypeList({required this.size, required this.list});
}

class TypeItem {
  int typeIdx; //ushort

  TypeItem({required this.typeIdx});
}

class CodeItem {
  int registersSize; //ushort
  int insSize; //ushort
  int outsSize; //ushort
  int triesSize; //ushort
  int debugInfoOff; //uint
  int insnsSize; //uint
  List<int> insns; //ushort[insns_size]
  //padding	ushort (optional) = 0
  List<TryItem> tries; //try_item[tries_size] (optional)
  EncodedCatchHandlerList handlers; //encoded_catch_handler_list (optional)

  CodeItem(
      {required this.registersSize,
      required this.insSize,
      required this.outsSize,
      required this.triesSize,
      required this.debugInfoOff,
      required this.insnsSize,
      required this.insns,
      required this.tries,
      required this.handlers});
}

class EncodedCatchHandlerList {}

class TryItem {
  int startAddr; //uint
  int insnCount; //ushort
  int handlerOff; //ushort

  TryItem(
      {required this.startAddr,
      required this.insnCount,
      required this.handlerOff});
}
