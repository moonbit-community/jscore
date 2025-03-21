///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/Error)
pub fn JError::new(msg : JString) -> JError = "new" "Error"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RangeError/RangeError)
pub fn JRangeError::new(msg : JString) -> JRangeError = "new" "RangeError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/EvalError/EvalError)
pub fn JEvalError::new(msg : JString) -> JEvalError = "new" "EvalError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SyntaxError/SyntaxError)
pub fn JSyntaxError::new(msg : JString) -> JSyntaxError = "new" "SyntaxError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypeError/TypeError)
pub fn JTypeError::new(msg : JString) -> JTypeError = "new" "TypeError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ReferenceError/ReferenceError)
pub fn JReferenceError::new(msg : JString) -> JReferenceError = "new" "ReferenceError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/AggregateError/AggregateError)
pub fn JAggregateError::new(
  xs : JArray[JError],
  msg : JString
) -> JAggregateError = "new" "AggregateError"

///|
fn JTypedArray::_u8_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JUint8Array = "new" "Uint8Array"

///|
fn JTypedArray::_u16_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JUint16Array = "new" "Uint16Array"

///|
fn JTypedArray::_u32_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JUint32Array = "new" "Uint32Array"

///|
fn JTypedArray::_i8_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JInt8Array = "new" "Uint8Array"

///|
fn JTypedArray::_i16_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JInt16Array = "new" "Int16Array"

///|
fn JTypedArray::_i32_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JInt32Array = "new" "Int32Array"

///|
fn JTypedArray::_char_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JTypedArray[Char] = "new" "Uint32Array"

///|
fn JTypedArray::_f32_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JFloat32Array = "new" "Float32Array"

///|
fn JTypedArray::_f64_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JFloat64Array = "new" "Float64Array"

///|
fn JTypedArray::_i64_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JBigInt64Array = "new" "BigInt64Array"

///|
fn JTypedArray::_u64_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JBigUint64Array = "new" "BigUint64Array"

///|
pub impl Js_TypedArray for Byte with new(buffer, offset, length) {
  JTypedArray::_u8_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Int16 with new(buffer, offset, length) {
  JTypedArray::_i16_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Int with new(buffer, offset, length) {
  JTypedArray::_i32_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for UInt with new(buffer, offset, length) {
  JTypedArray::_u32_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for UInt16 with new(buffer, offset, length) {
  JTypedArray::_u16_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Float with new(buffer, offset, length) {
  JTypedArray::_f32_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Double with new(buffer, offset, length) {
  JTypedArray::_f64_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Int64 with new(buffer, offset, length) {
  JTypedArray::_i64_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for UInt64 with new(buffer, offset, length) {
  JTypedArray::_u64_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Char with new(buffer, offset, lenght) {
  JTypedArray::_char_new(buffer, offset, lenght)
}

///|
pub fn JTypedArray::new[T : Js_TypedArray](
  buffer : JArrayBuffer,
  byteOffset : Int,
  length : Int
) -> JTypedArray[T] {
  T::new(buffer, byteOffset, length)
}

///|  [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/ArrayBuffer)
pub fn JArrayBuffer::new(len : Int) -> JArrayBuffer = "new" "ArrayBuffer"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/TextEncoder)
pub fn JTextEncoder::new() -> JTextEncoder = "new" "TextEncoder"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/TextDecoder)
pub fn JTextDecoder::new(label : JString) -> JTextDecoder = "new" "TextDecoder"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/Number)
pub fn JNumber::new(value : JAny) -> JNumber = "new" "Number"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date)
pub fn JDate::new(
  year : Int,
  monthIndex : Int,
  day : Int,
  hours : Int,
  minutes : Int,
  seconds : Int,
  milliseconds : Int
) -> JDate = "new" "Date"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/RegExp)
pub fn JRegExp::new(pattern : JString) -> JRegExp = "new" "RegExp"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/Map)
fn JMap::_new() -> JMap[JAny, JAny] = "new" "Map"

///|
pub fn JMap::new[K, V]() -> JMap[K, V] {
  JMap::_new() |> coerce
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/Set)
fn JSet::_new() -> JSet[JAny] = "new" "Set"

///|
pub fn JSet::new[V]() -> JSet[V] {
  JSet::_new() |> coerce
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/WeakMap)
pub fn JWeakMap::new[K, V]() -> JWeakMap[K, V] {
  JWeakMap::_new() |> coerce
}

///|
fn JWeakMap::_new() -> JWeakMap[JAny, JAny] = "new" "WeakMap"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet/WeakSet)
pub fn JWeakSet::new[V]() -> JWeakSet[V] {
  JWeakSet::_new() |> coerce
}

///|
fn JWeakSet::_new() -> JWeakSet[JAny] = "new" "WeakSet"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/SharedArrayBuffer)
pub fn JSharedArrayBuffer::new(length : Int) -> JSharedArrayBuffer = "new" "SharedArrayBuffer"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/DataView)
pub fn JDataView::new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JDataView = "new" "DataView"

///|
fn JWeakRef::_new(target : JAny) -> JWeakRef[JAny] = "new" "WeakRef"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakRef/WeakRef)
pub fn JWeakRef::new[T : Js](target : T) -> JWeakRef[T] {
  JWeakRef::_new(target.to_any()) |> coerce
}

///|
fn JArray::_new() -> JArray[JAny] = "new" "Array"

///|
pub fn JArray::new[T]() -> JArray[T] {
  coerce(JArray::_new)()
}

// TODO
///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/FinalizationRegistry/FinalizationRegistry)
// pub fn JFinalizationRegistry::new(callbackFn : JAny) -> JFinalizationRegistry = "new" "FinalizationRegistry"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/Promise)
// pub fn JPromise::_new(executor : JAny) -> JPromise[JAny]= "new" "Promise"
// pub fn JPromise::new[T](executor : JAny) -> JPromise[T] { JPromise::_new(executor) |> coerce }
