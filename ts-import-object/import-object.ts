import * as spectest from "../ts-import-object/spectest.js"
import {
  make_closure, prototype_to_ffi,
  object_setter, bool_to_number, number_to_bool, object_getter,
  try_catch_finally,
  throw_error,
  Prototype
} from "../ts-import-object/moonbit_ffi.js"


let utf16Decoder = new TextDecoder('utf-16')


export type Classes = {
  name: string
  new(...args: any[]): any
}

export let Console: Prototype = {
  prototype: console,
  name: 'Console'
}

export let classes = [
  Array,
  Int8Array, Uint8Array, Uint8ClampedArray, Int16Array, Uint16Array, Int32Array, Uint32Array, BigInt64Array, BigUint64Array, Float32Array, Float64Array,
  Number, Date,
  Error, AggregateError, EvalError, RangeError, ReferenceError, SyntaxError, TypeError, URIError,
  String, RegExp,
  Map, Set, WeakMap, WeakSet,
  ArrayBuffer, SharedArrayBuffer,
  DataView, WeakRef, FinalizationRegistry, Promise,
  TextDecoder, TextEncoder, Object
] as Classes[]

let values = [
  'length', 'BYTES_PER_ELEMENT', 'name', 'message'
]

let prototype_to_new = <T>(tys: Classes[]): WebAssembly.ModuleImports => {
  let obj: any = {}
  for (let ty of tys) {
    obj[ty.name] = (...args: any[]) => {
      return new ty(...args)
    }
  }
  return obj
}

type Length = {
  length: number
}

type TypedArray = {
  BYTES_PER_ELEMENT: number
}

let global = {
  console: () => console,
  utf16Decoder: () => utf16Decoder,
  coerce: (x: any) => x,
  number_to_bool,
  bool_to_number,
  try_catch_finally,
  throw_error,
  set: object_setter,
  get: object_getter,
  true: () => true,
  false: () => false,
  null: () => null,
  undefined: () => undefined,
  typeof: (x: any) => typeof x,
  instanceof: (x: any, c: any) => x instanceof c,
  length: (x: Length) => x.length,
  BYTES_PER_ELEMENT: (x: TypedArray) => x.BYTES_PER_ELEMENT,
  name: (x: Error) => x.name,
  message: (x: Error) => x.message,
  equal: (lhs: any, rhs: any) => lhs === rhs
}


export let importObject = {
  new: prototype_to_new(classes),
  spectest,
  "moonbit:ffi": {
    make_closure
  },
  global,
  String: prototype_to_ffi(String),
  ArrayBuffer: prototype_to_ffi(ArrayBuffer),
  SharedArrayBuffer: prototype_to_ffi(SharedArrayBuffer),
  TextDecoder: prototype_to_ffi(TextDecoder),
  TextEncoder: prototype_to_ffi(TextEncoder),
  Error: prototype_to_ffi(Error),
  Console: prototype_to_ffi(Console),
  Date: prototype_to_ffi(Date),
  RegExp: prototype_to_ffi(RegExp),
  Map: prototype_to_ffi(Map),
  Set: prototype_to_ffi(Set),
  WeakMap: prototype_to_ffi(WeakMap),
  WeakSet: prototype_to_ffi(WeakSet),
  WeakRef: prototype_to_ffi(WeakRef),
  DataView: prototype_to_ffi(DataView),
  Array : prototype_to_ffi(Array)
}
