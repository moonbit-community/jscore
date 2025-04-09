///|
pub extern type Any

///|
pub extern type Object

///|
pub extern type Array[T]

///|
pub extern type JError

///|
pub extern type AggregateError

///|
pub extern type EvalError

///|
pub extern type RangeError

///|
pub extern type ReferenceError

///|
pub extern type SyntaxError

///|
pub extern type TypeError

///|
pub extern type URIError

///|
pub extern type JString

///|
pub extern type TextDecoder

///|
pub extern type TextEncoder

///|
pub extern type TypedArray[T]

///|
pub extern type ArrayBuffer

///|
pub typealias Uint8Array = TypedArray[Byte]

///|
pub typealias Uint16Array = TypedArray[UInt16]

///|
pub typealias Uint32Array = TypedArray[UInt]

///|
pub typealias Int8Array = TypedArray[Byte]

///|
pub typealias JInt16Array = TypedArray[Int16]

///|
pub extern type Console

///|
pub typealias Int32Array = TypedArray[Int]

///|
pub typealias Float32Array = TypedArray[Float]

///|
pub typealias Float64Array = TypedArray[Double]

///|
pub typealias BigInt64Array = TypedArray[Int64]

///|
pub typealias BigUint64Array = TypedArray[UInt64]

///|
pub extern type Number

///|
pub extern type Date

///|
pub extern type RegExp

///|
pub extern type Map[K, V]

///|
pub extern type Set[V]

///|
pub extern type WeakMap[K, V]

///|
pub extern type WeakSet[V]

///|
pub extern type SharedArrayBuffer

///|
pub extern type DataView

///|
pub extern type WeakRef[T]

///|
pub extern type Iterator[T]

// TODO
// pub extern type JFinalizationRegistry
// pub extern type JPromise[T]
