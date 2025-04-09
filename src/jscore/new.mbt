///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/Error)
pub fn JError::new(msg : JString) -> JError = "illusory0x0_core_new" "Error"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RangeError/RangeError)
pub fn JRangeError::new(msg : JString) -> JRangeError = "illusory0x0_core_new" "RangeError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/EvalError/EvalError)
pub fn JEvalError::new(msg : JString) -> JEvalError = "illusory0x0_core_new" "EvalError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SyntaxError/SyntaxError)
pub fn JSyntaxError::new(msg : JString) -> JSyntaxError = "illusory0x0_core_new" "SyntaxError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypeError/TypeError)
pub fn JTypeError::new(msg : JString) -> JTypeError = "illusory0x0_core_new" "TypeError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ReferenceError/ReferenceError)
pub fn JReferenceError::new(msg : JString) -> JReferenceError = "illusory0x0_core_new" "ReferenceError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/AggregateError/AggregateError)
pub fn JAggregateError::new(
  xs : JArray[JError],
  msg : JString
) -> JAggregateError = "illusory0x0_core_new" "AggregateError"

///|
fn JTypedArray::_u8_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JUint8Array = "illusory0x0_core_new" "Uint8Array"

///|
fn JTypedArray::_u16_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JUint16Array = "illusory0x0_core_new" "Uint16Array"

///|
fn JTypedArray::_u32_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JUint32Array = "illusory0x0_core_new" "Uint32Array"

///|
fn JTypedArray::_i8_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JInt8Array = "illusory0x0_core_new" "Uint8Array"

///|
fn JTypedArray::_i16_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JInt16Array = "illusory0x0_core_new" "Int16Array"

///|
fn JTypedArray::_i32_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JInt32Array = "illusory0x0_core_new" "Int32Array"

///|
fn JTypedArray::_char_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JTypedArray[Char] = "illusory0x0_core_new" "Uint32Array"

///|
fn JTypedArray::_f32_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JFloat32Array = "illusory0x0_core_new" "Float32Array"

///|
fn JTypedArray::_f64_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JFloat64Array = "illusory0x0_core_new" "Float64Array"

///|
fn JTypedArray::_i64_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JBigInt64Array = "illusory0x0_core_new" "BigInt64Array"

///|
fn JTypedArray::_u64_new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JBigUint64Array = "illusory0x0_core_new" "BigUint64Array"

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
pub fn JArrayBuffer::new(len : Int) -> JArrayBuffer = "illusory0x0_core_new" "ArrayBuffer"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/TextEncoder)
pub fn JTextEncoder::new() -> JTextEncoder = "illusory0x0_core_new" "TextEncoder"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/TextDecoder)
pub fn JTextDecoder::new(label : JString) -> JTextDecoder = "illusory0x0_core_new" "TextDecoder"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/Number)
pub fn JNumber::new(value : JAny) -> JNumber = "illusory0x0_core_new" "Number"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date)
pub fn JDate::new(
  year : Int,
  monthIndex : Int,
  day : Int,
  hours : Int,
  minutes : Int,
  seconds : Int,
  milliseconds : Int
) -> JDate = "illusory0x0_core_new" "Date"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/RegExp)
pub fn JRegExp::new(pattern : JString) -> JRegExp = "illusory0x0_core_new" "RegExp"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/Map)
fn JMap::_new() -> JMap[JAny, JAny] = "illusory0x0_core_new" "Map"

///|
pub fn JMap::new[K, V]() -> JMap[K, V] {
  JMap::_new() |> coerce
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/Set)
fn JSet::_new() -> JSet[JAny] = "illusory0x0_core_new" "Set"

///|
pub fn JSet::new[V]() -> JSet[V] {
  JSet::_new() |> coerce
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/WeakMap)
pub fn JWeakMap::new[K, V]() -> JWeakMap[K, V] {
  JWeakMap::_new() |> coerce
}

///|
fn JWeakMap::_new() -> JWeakMap[JAny, JAny] = "illusory0x0_core_new" "WeakMap"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet/WeakSet)
pub fn JWeakSet::new[V]() -> JWeakSet[V] {
  JWeakSet::_new() |> coerce
}

///|
fn JWeakSet::_new() -> JWeakSet[JAny] = "illusory0x0_core_new" "WeakSet"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/SharedArrayBuffer)
pub fn JSharedArrayBuffer::new(length : Int) -> JSharedArrayBuffer = "illusory0x0_core_new" "SharedArrayBuffer"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/DataView)
pub fn JDataView::new(
  buffer : JArrayBuffer,
  offset : Int,
  length : Int
) -> JDataView = "illusory0x0_core_new" "DataView"

///|
fn JWeakRef::_new(target : JAny) -> JWeakRef[JAny] = "illusory0x0_core_new" "WeakRef"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakRef/WeakRef)
pub fn JWeakRef::new[T : Js](target : T) -> JWeakRef[T] {
  JWeakRef::_new(target.to_any()) |> coerce
}

///|
fn JArray::_new() -> JArray[JAny] = "illusory0x0_core_new" "Array"

///|
pub fn JArray::new[T]() -> JArray[T] {
  coerce(JArray::_new)()
}

// TODO
///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/FinalizationRegistry/FinalizationRegistry)
// pub fn JFinalizationRegistry::new(callbackFn : JAny) -> JFinalizationRegistry = "illusory0x0_core_new" "FinalizationRegistry"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/Promise)
// pub fn JPromise::_new(executor : JAny) -> JPromise[JAny]= "illusory0x0_core_new" "Promise"
// pub fn JPromise::new[T](executor : JAny) -> JPromise[T] { JPromise::_new(executor) |> coerce }

fn JArray::_empty() -> JArray[JAny] = "illusory0x0_core_new" "Array"

pub fn JDate::from_timestamp(timestamp : Double) -> JDate = "illusory0x0_core_new" "Date"

pub fn JObject::empty() -> JObject = "illusory0x0_core_new" "Object"
