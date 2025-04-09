///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/Error)
pub fn Error_::new(msg : String_) -> Error_ = "illusory0x0_core_new" "Error"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RangeError/RangeError)
pub fn RangeError::new(msg : String_) -> RangeError = "illusory0x0_core_new" "RangeError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/EvalError/EvalError)
pub fn EvalError::new(msg : String_) -> EvalError = "illusory0x0_core_new" "EvalError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SyntaxError/SyntaxError)
pub fn SyntaxError::new(msg : String_) -> SyntaxError = "illusory0x0_core_new" "SyntaxError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypeError/TypeError)
pub fn TypeError::new(msg : String_) -> TypeError = "illusory0x0_core_new" "TypeError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ReferenceError/ReferenceError)
pub fn ReferenceError::new(msg : String_) -> ReferenceError = "illusory0x0_core_new" "ReferenceError"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/AggregateError/AggregateError)
pub fn AggregateError::new(xs : Array[Error_], msg : String_) -> AggregateError = "illusory0x0_core_new" "AggregateError"

///|
fn TypedArray::_u8_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> Uint8Array = "illusory0x0_core_new" "Uint8Array"

///|
fn TypedArray::_u16_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> Uint16Array = "illusory0x0_core_new" "Uint16Array"

///|
fn TypedArray::_u32_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> Uint32Array = "illusory0x0_core_new" "Uint32Array"

///|
fn TypedArray::_i8_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> Int8Array = "illusory0x0_core_new" "Uint8Array"

///|
fn TypedArray::_i16_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> Int16Array = "illusory0x0_core_new" "Int16Array"

///|
fn TypedArray::_i32_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> Int32Array = "illusory0x0_core_new" "Int32Array"

///|
fn TypedArray::_char_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> TypedArray[Char] = "illusory0x0_core_new" "Uint32Array"

///|
fn TypedArray::_f32_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> Float32Array = "illusory0x0_core_new" "Float32Array"

///|
fn TypedArray::_f64_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> Float64Array = "illusory0x0_core_new" "Float64Array"

///|
fn TypedArray::_i64_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> BigInt64Array = "illusory0x0_core_new" "BigInt64Array"

///|
fn TypedArray::_u64_new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> BigUint64Array = "illusory0x0_core_new" "BigUint64Array"

///|
pub impl Js_TypedArray for Byte with new(buffer, offset, length) {
  TypedArray::_u8_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Int16 with new(buffer, offset, length) {
  TypedArray::_i16_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Int with new(buffer, offset, length) {
  TypedArray::_i32_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for UInt with new(buffer, offset, length) {
  TypedArray::_u32_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for UInt16 with new(buffer, offset, length) {
  TypedArray::_u16_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Float with new(buffer, offset, length) {
  TypedArray::_f32_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Double with new(buffer, offset, length) {
  TypedArray::_f64_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Int64 with new(buffer, offset, length) {
  TypedArray::_i64_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for UInt64 with new(buffer, offset, length) {
  TypedArray::_u64_new(buffer, offset, length)
}

///|
pub impl Js_TypedArray for Char with new(buffer, offset, lenght) {
  TypedArray::_char_new(buffer, offset, lenght)
}

///|
pub fn TypedArray::new[T : Js_TypedArray](
  buffer : ArrayBuffer,
  byteOffset : Int,
  length : Int
) -> TypedArray[T] {
  T::new(buffer, byteOffset, length)
}

///|  [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/ArrayBuffer)
pub fn ArrayBuffer::new(len : Int) -> ArrayBuffer = "illusory0x0_core_new" "ArrayBuffer"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/TextEncoder)
pub fn TextEncoder::new() -> TextEncoder = "illusory0x0_core_new" "TextEncoder"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/TextDecoder)
pub fn TextDecoder::new(label : String_) -> TextDecoder = "illusory0x0_core_new" "TextDecoder"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/Number)
pub fn Number::new(value : Any) -> Number = "illusory0x0_core_new" "Number"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date)
pub fn Date::new(
  year : Int,
  monthIndex : Int,
  day : Int,
  hours : Int,
  minutes : Int,
  seconds : Int,
  milliseconds : Int
) -> Date = "illusory0x0_core_new" "Date"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp/RegExp)
pub fn RegExp::new(pattern : String_) -> RegExp = "illusory0x0_core_new" "RegExp"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/Map)
fn Map::_new() -> Map[Any, Any] = "illusory0x0_core_new" "Map"

///|
pub fn Map::new[K, V]() -> Map[K, V] {
  Map::_new() |> coerce
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/Set)
fn Set::_new() -> Set[Any] = "illusory0x0_core_new" "Set"

///|
pub fn Set::new[V]() -> Set[V] {
  Set::_new() |> coerce
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/WeakMap)
pub fn WeakMap::new[K, V]() -> WeakMap[K, V] {
  WeakMap::_new() |> coerce
}

///|
fn WeakMap::_new() -> WeakMap[Any, Any] = "illusory0x0_core_new" "WeakMap"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet/WeakSet)
pub fn WeakSet::new[V]() -> WeakSet[V] {
  WeakSet::_new() |> coerce
}

///|
fn WeakSet::_new() -> WeakSet[Any] = "illusory0x0_core_new" "WeakSet"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/SharedArrayBuffer)
pub fn SharedArrayBuffer::new(length : Int) -> SharedArrayBuffer = "illusory0x0_core_new" "SharedArrayBuffer"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/DataView)
pub fn DataView::new(
  buffer : ArrayBuffer,
  offset : Int,
  length : Int
) -> DataView = "illusory0x0_core_new" "DataView"

///|
fn WeakRef::_new(target : Any) -> WeakRef[Any] = "illusory0x0_core_new" "WeakRef"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakRef/WeakRef)
pub fn WeakRef::new[T : Js](target : T) -> WeakRef[T] {
  WeakRef::_new(target.to_any()) |> coerce
}

///|
fn Array::_new() -> Array[Any] = "illusory0x0_core_new" "Array"

///|
pub fn Array::new[T]() -> Array[T] {
  coerce(Array::_new)()
}

// TODO
///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/FinalizationRegistry/FinalizationRegistry)
// pub fn JFinalizationRegistry::new(callbackFn : Any) -> JFinalizationRegistry = "illusory0x0_core_new" "FinalizationRegistry"

// pub fn JPromise::_new(executor : Any) -> JPromise[Any]= "illusory0x0_core_new" "Promise"
// pub fn JPromise::new[T](executor : Any) -> JPromise[T] { JPromise::_new(executor) |> coerce }

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/Promise)
fn Array::_empty() -> Array[Any] = "illusory0x0_core_new" "Array"

///|
pub fn Date::from_timestamp(timestamp : Double) -> Date = "illusory0x0_core_new" "Date"

///|
pub fn Object::empty() -> Object = "illusory0x0_core_new" "Object"
