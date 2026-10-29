///|
using @jscore {
  type TextDecoder,
  type Error_,
  type ReferenceError,
  type RangeError,
  type EvalError,
  type SyntaxError,
  type TypeError,
  type AggregateError,
  type DataView,
  type TextEncoder,
  type Number,
  type RegExp,
  type Date,
  type SharedArrayBuffer,
  type String_,
  type Any,
  type Int32Array,
  type Map,
  type WeakMap,
  type Set,
  type WeakRef,
  type WeakSet,
  type Console,
  type TypedArray,
  type ArrayBuffer,
  type Array,
}

///|
let js_try_catch_finally = @jscore.js_try_catch_finally

///|
let js_throw = @jscore.js_throw

///|
let console = @jscore.console

///|
fn test_new() -> Unit {
  let msg = TextDecoder::from_builtin("hello")
  let errors = Array::from_builtin([
    Error_::new(msg),
    RangeError::new(msg).to_error(),
    EvalError::new(msg).to_error(),
    SyntaxError::new(msg).to_error(),
    TypeError::new(msg).to_error(),
    ReferenceError::new(msg).to_error(),
  ])
  AggregateError::new(Array::empty(), msg) |> ignore
  let buf = ArrayBuffer::new(1024)
  (TypedArray::new(buf, 0, 0) : TypedArray[Byte]) |> ignore
  (TypedArray::new(buf, 0, 0) : TypedArray[Int16]) |> ignore
  (TypedArray::new(buf, 0, 0) : TypedArray[Int32]) |> ignore
  (TypedArray::new(buf, 0, 0) : TypedArray[Int64]) |> ignore
  (TypedArray::new(buf, 0, 0) : TypedArray[UInt16]) |> ignore
  (TypedArray::new(buf, 0, 0) : TypedArray[UInt32]) |> ignore
  (TypedArray::new(buf, 0, 0) : TypedArray[UInt64]) |> ignore
  (TypedArray::new(buf, 0, 0) : TypedArray[Float]) |> ignore
  (TypedArray::new(buf, 0, 0) : TypedArray[Double]) |> ignore
  (TypedArray::new(buf, 0, 0) : TypedArray[Char]) |> ignore
  TextDecoder::new(TextDecoder::from_builtin("utf-8")) |> ignore
  TextEncoder::new() |> ignore
  Number::new(msg.to_any()) |> ignore
  Date::new(2025, 3, 6, 8, 19, 20, 20) |> ignore
  RegExp::new(TextDecoder::from_builtin("abc")) |> ignore
  (Map::new() : Map[Int32, Int32]) |> ignore
  (WeakMap::new() : WeakMap[Int32, Int32]) |> ignore
  (Set::new() : Set[Int32]) |> ignore
  (WeakSet::new() : WeakSet[Int32]) |> ignore
  SharedArrayBuffer::new(1024) |> ignore
  DataView::new(buf, 0, 1024) |> ignore
  WeakRef::new(buf.to_any()) |> ignore
}

///|
fn test_error() -> Unit {
  let msg = TextDecoder::from_builtin("hello")
  let msg = TextDecoder::from_builtin("hello")
  let errors = [
    Error_::new(msg),
    RangeError::new(msg).to_error(),
    EvalError::new(msg).to_error(),
    SyntaxError::new(msg).to_error(),
    TypeError::new(msg).to_error(),
    ReferenceError::new(msg).to_error(),
  ]
  for e in errors {
    println(e.name().to_string())
    println(e.message().to_string())
    println(e.toString().to_string())
  }
}

///|
fn test_global() -> Unit {
  console.log(@jscore.js_false)
  console.log(@jscore.js_true)
  console.log(@jscore.js_false)
  console.log(@jscore.js_undefined)
  // js_null |> ignore
}

///|
fn test_arraybuffer() -> Unit {
  let buf = ArrayBuffer::new(1024)
  console.log(buf.byteLength())
  console.log(buf.maxByteLength())
  console.log(buf.resizable())
  console.log(buf.detached())
  console.log(buf.byteLength())
  let x = buf.transfer(10)
  console.log(x)
}

///|
fn test_console() -> Unit {
  // console.clear()
  let timer1 = TextDecoder::from_builtin("timer1")
  console.time(timer1)
  console.log(0)
  console.info(0)
  console.debug(0)
  console.warn(0)
  console.error(0)
  console.dir(0)
  for i in 0..<5 {
    console.timeLog(timer1)
  }
  console.log("time end" |> TextDecoder::from_builtin)
  console.timeEnd(timer1)
  console.trace()
  console.assert_(1 == 2, TextDecoder::from_builtin("1 == 2"))
  console.count(timer1)
}

///|
fn test_date() -> Unit {
  let timestamp = Date::now()
  console.log(timestamp)
  let time = TextDecoder::from_builtin("2019-01-01T00:00:00.000Z")
  console.log(time)
  let timestamp = Date::parse(time)
  console.log(timestamp)
  let date = Date::from_timestamp(Date::now())
  console.log(date)
  console.log(date.toLocaleString())
  console.log(date.toLocaleDateString())
  console.log(date.toLocaleTimeString())
  console.log(date.toString())
  console.log(date.toDateString())
  console.log(date.toTimeString())
  console.log(date.toISOString())
  console.log(date.toUTCString())
}

///|
fn test_regexp() -> Unit {
  let re = RegExp::new(TextDecoder::from_builtin("abc"))
  console.log(re.toString())
}

///|
fn test_map() -> Unit {
  let map : Map[String_, Int32] = Map::new()
  map[TextDecoder::from_builtin("a")] = 0
  map[TextDecoder::from_builtin("b")] = 1
  console.log(map)
  console.log(map.entries())
  console.log(map.keys())
  console.log(map.values())
  console.log(map.entries() |> Array::from_iterator)
  console.log(map.keys() |> Array::from_iterator)
  console.log(map.values() |> Array::from_iterator)
  console.log(map[TextDecoder::from_builtin("a")])
  console.log(map[TextDecoder::from_builtin("c")])

  // Map::clear
  map.clear()
  println("map: clear")
  console.log(map)
}

///|
fn test_set() -> Unit {
  let set1 : Set[Int32] = Set::new()
  set1.add(0)
  set1.add(1)
  set1.add(2)
  let set2 : Set[Int32] = Set::new()
  set2.add(4)
  set2.add(5)
  set2.add(6)
  console.log(set1.union(set2).isSupersetOf(Set::new()))
  console.log(Set::new().isSubsetOf(set1))
  console.log(set1.intersection(set2))
  console.log(set1)
  console.log(set2)
  console.log(set1.has(0))
  console.log(set1.size())
}

///|
fn test_dataview() -> Unit {
  let buf = ArrayBuffer::new(2)
  let dv = DataView::new(buf, 0, 2)
  dv.setUint16(0, 0xff, true)
  console.log(dv)
  dv.setUint16(0, 0xff, false)
  console.log(dv)
  console.log(dv.byteLength())
  console.log(dv.byteOffset())
  let arr : Array[Any] = Array::empty()
  let arr1 : Array[Double] = Array::empty()
  let arr2 : Array[Int32] = Array::empty()
  arr1[0] = 1.2
  arr2[0] = 99
  arr[0] = arr1.to_any()
  arr[1] = arr2.to_any()
  console.log(arr)
}

///|
fn test_array() -> Unit {
  let arr1 : Array[Int32] = Array::empty()
  arr1[0] = 322
  console.log(arr1)
  let arr1 : Array[Double] = Array::empty()
  arr1[0] = 2.35
  console.log(arr1)
  console.log(arr1.length())
}

///|
fn test_typedarray() -> Unit {
  let arr : Int32Array = TypedArray::make(ArrayBuffer::new(4 * 10), 0, 10)
  arr[0] = 99
  console.log(arr)
}

///|
fn test_textdecoder_from_string() -> Unit {
  console.log(TextDecoder::from_builtin("hello world"))
  console.log(TextDecoder::from_builtin("你好"))
  console.log(TextDecoder::from_builtin("🐬"))
}

///|
fn test_json_to_any() -> Unit {
  let x = { "x": 1, "y": 2, "is_point": true, "arr": [1, 2, 3] }
    |> Any::from_json
  console.log(x)
}

///|
fn test_textencoder() -> Unit {
  let encoder = TextEncoder::new()
  console.log(encoder.encoding())
  let buf = encoder.encode(TextDecoder::from_builtin("hello"))
  console.log(buf)
  let buf = ArrayBuffer::new(4096)
  let buf = TypedArray::new(buf, 0, 4096)
  let status = encoder.encodeInto(TextDecoder::from_builtin("hello"), buf)
  console.log(status)
}

///|
pub fn entry_test() -> Unit {
  // uncomment this will encounter ICE
  // test_array()
  // test_dataview()
  // test_map()
  // test_set()
  // test_typedarray()
  // test_textencoder()

  println("BEGIN TEST")
  test_ffi_regressions()
  test_date()
  test_arraybuffer()
  test_error()
  test_global()
  test_json_to_any()
  test_new()
  test_regexp()
  test_textdecoder_from_string()
  test_console()
  test_try_catch()
  println("END TEST")
}

///|
/// wasm backend doesn't support now.
/// https://github.com/moonbitlang/moonbit-docs/issues/620
fn test_try_catch() -> Unit {
  let e = Error_::new(TextDecoder::from_builtin(""))
  js_try_catch_finally(fn() { js_throw(e) }, fn(e) { console.log(e) }, fn() {  })
}
// pub fn catch_panic() -> Unit {
//   js_try_catch_finally(fn() {
//     panic()
//   },fn(e) {
//     println("catch panic")
//   },fn() {

//   })
// }

///|
fn test_ffi_regressions() -> Unit {
  for text in ["", "ASCII", "你好", "🐬", "x".repeat(9000)] {
    if TextDecoder::from_builtin(text).to_string() != text {
      abort("UTF-16 conversion did not round-trip")
    }
  }
  let events = Ref("")
  js_try_catch_finally(
    fn() { events.val += "try;" },
    fn(_) { abort("catch called without an exception") },
    fn() { events.val += "finally;" },
  )
  if events.val != "try;finally;" {
    abort("normal finally order")
  }
  events.val = ""
  let first = Error_::new(TextDecoder::from_builtin("first"))
  let second = Error_::new(TextDecoder::from_builtin("second"))
  js_try_catch_finally(
    fn() {
      js_try_catch_finally(
        fn() { js_throw(first) },
        fn(error) {
          if error.message().to_string() != "first" {
            abort("wrong first error")
          }
          events.val += "catch;"
          js_throw(second)
        },
        fn() { events.val += "inner-finally;" },
      )
    },
    fn(error) {
      if error.message().to_string() != "second" {
        abort("wrong rethrown error")
      }
      events.val += "outer-catch;"
    },
    fn() { events.val += "outer-finally;" },
  )
  if events.val != "catch;inner-finally;outer-catch;outer-finally;" {
    abort("exception finally order")
  }
}
