///|
typealias @jscore.(
  JTextDecoder,
  JError,
  JReferenceError,
  JRangeError,
  JEvalError,
  JSyntaxError,
  JTypeError,
  JAggregateError,
  JDataView,
  JTextEncoder,
  JNumber,
  JRegExp,
  JDate,
  JSharedArrayBuffer,
  JString,
  JAny,
  JInt32Array,
  JMap[K, V],
  JWeakMap[K, V],
  JSet[V],
  JWeakRef[V],
  JWeakSet[V],
  JConsole,
  JTypedArray[T],
  JArrayBuffer,
  JArray[T]
)

///|
let js_try_catch_finally = @jscore.js_try_catch_finally

///|
let js_throw = @jscore.js_throw

///|
let console = @jscore.console

///|
fn test_new() -> Unit {
  let msg = JTextDecoder::from_string("hello")
  let errors = JArray::from_array([
    JError::new(msg),
    JRangeError::new(msg).to_error(),
    JEvalError::new(msg).to_error(),
    JSyntaxError::new(msg).to_error(),
    JTypeError::new(msg).to_error(),
    JReferenceError::new(msg).to_error(),
  ])
  JAggregateError::new(JArray::empty(), msg) |> ignore
  let buf = JArrayBuffer::new(1024)
  (JTypedArray::new(buf, 0, 0) : JTypedArray[Byte]) |> ignore
  (JTypedArray::new(buf, 0, 0) : JTypedArray[Int16]) |> ignore
  (JTypedArray::new(buf, 0, 0) : JTypedArray[Int]) |> ignore
  (JTypedArray::new(buf, 0, 0) : JTypedArray[Int64]) |> ignore
  (JTypedArray::new(buf, 0, 0) : JTypedArray[UInt16]) |> ignore
  (JTypedArray::new(buf, 0, 0) : JTypedArray[UInt]) |> ignore
  (JTypedArray::new(buf, 0, 0) : JTypedArray[UInt64]) |> ignore
  (JTypedArray::new(buf, 0, 0) : JTypedArray[Float]) |> ignore
  (JTypedArray::new(buf, 0, 0) : JTypedArray[Double]) |> ignore
  (JTypedArray::new(buf, 0, 0) : JTypedArray[Char]) |> ignore
  JTextDecoder::new(JTextDecoder::from_string("utf-8")) |> ignore
  JTextEncoder::new() |> ignore
  JNumber::new(msg.to_any()) |> ignore
  JDate::new(2025, 3, 6, 8, 19, 20, 20) |> ignore
  JRegExp::new(JTextDecoder::from_string("abc")) |> ignore
  (JMap::new() : JMap[Int, Int]) |> ignore
  (JWeakMap::new() : JWeakMap[Int, Int]) |> ignore
  (JSet::new() : JSet[Int]) |> ignore
  (JWeakSet::new() : JWeakSet[Int]) |> ignore
  JSharedArrayBuffer::new(1024) |> ignore
  JDataView::new(buf, 0, 1024) |> ignore
  JWeakRef::new(buf.to_any()) |> ignore
}

///|
fn test_error() -> Unit {
  let msg = JTextDecoder::from_string("hello")
  let msg = JTextDecoder::from_string("hello")
  let errors = [
    JError::new(msg),
    JRangeError::new(msg).to_error(),
    JEvalError::new(msg).to_error(),
    JSyntaxError::new(msg).to_error(),
    JTypeError::new(msg).to_error(),
    JReferenceError::new(msg).to_error(),
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
  let buf = JArrayBuffer::new(1024)
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
  let timer1 = JTextDecoder::from_string("timer1")
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
  console.log("time end" |> JTextDecoder::from_string)
  console.timeEnd(timer1)
  console.trace()
  console.assert_(1 == 2, JTextDecoder::from_string("1 == 2"))
  console.count(timer1)
}

///|
fn test_date() -> Unit {
  let timestamp = JDate::now()
  console.log(timestamp)
  let time = JTextDecoder::from_string("2019-01-01T00:00:00.000Z")
  console.log(time)
  let timestamp = JDate::parse(time)
  console.log(timestamp)
  let date = JDate::from_timestamp(JDate::now())
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
  let re = JRegExp::new(JTextDecoder::from_string("abc"))
  console.log(re.toString())
}

///|
fn test_map() -> Unit {
  let map : JMap[JString, Int] = JMap::new()
  map[JTextDecoder::from_string("a")] = 0
  map[JTextDecoder::from_string("b")] = 1
  console.log(map)
  console.log(map.entries())
  console.log(map.keys())
  console.log(map.values())
  console.log(map.entries() |> JArray::from_iterator)
  console.log(map.keys() |> JArray::from_iterator)
  console.log(map.values() |> JArray::from_iterator)
  console.log(map[JTextDecoder::from_string("a")])
  console.log(map[JTextDecoder::from_string("c")])

  // Map::clear
  map.clear()
  println("map: clear")
  console.log(map)
}

///|
fn test_set() -> Unit {
  let set1 : JSet[Int] = JSet::new()
  set1.add(0)
  set1.add(1)
  set1.add(2)
  let set2 : JSet[Int] = JSet::new()
  set2.add(4)
  set2.add(5)
  set2.add(6)
  console.log(set1.union(set2).isSupersetOf(JSet::new()))
  console.log(JSet::new().isSubsetOf(set1))
  console.log(set1.intersection(set2))
  console.log(set1)
  console.log(set2)
  console.log(set1.has(0))
  console.log(set1.size())
}

///|
fn test_dataview() -> Unit {
  let buf = JArrayBuffer::new(2)
  let dv = JDataView::new(buf, 0, 2)
  dv.setUint16(0, 0xff, true)
  console.log(dv)
  dv.setUint16(0, 0xff, false)
  console.log(dv)
  console.log(dv.byteLength())
  console.log(dv.byteOffset())
  let arr : JArray[JAny] = JArray::empty()
  let arr1 : JArray[Double] = JArray::empty()
  let arr2 : JArray[Int] = JArray::empty()
  arr1[0] = 1.2
  arr2[0] = 99
  arr[0] = arr1.to_any()
  arr[1] = arr2.to_any()
  console.log(arr)
}

///|
fn test_array() -> Unit {
  let arr1 : JArray[Int] = JArray::empty()
  arr1[0] = 322
  console.log(arr1)
  let arr1 : JArray[Double] = JArray::empty()
  arr1[0] = 2.35
  console.log(arr1)
  console.log(arr1.length())
}

///|
fn test_typedarray() -> Unit {
  let arr : JInt32Array = JTypedArray::make(JArrayBuffer::new(4 * 10), 0, 10)
  arr[0] = 99
  console.log(arr)
}

///|
fn test_textdecoder_from_string() -> Unit {
  console.log(JTextDecoder::from_string("hello world"))
  console.log(JTextDecoder::from_string("你好"))
  console.log(JTextDecoder::from_string("🐬"))
}

///|
fn test_json_to_any() -> Unit {
  let x = { "x": 1, "y": 2, "is_point": true, "arr": [1, 2, 3] }
    |> JAny::from_json
  console.log(x)
}

///|
fn test_textencoder() -> Unit {
  let encoder = JTextEncoder::new()
  console.log(encoder.encoding())
  let buf = encoder.encode(JTextDecoder::from_string("hello"))
  console.log(buf)
  let buf = JArrayBuffer::new(4096)
  let buf = JTypedArray::new(buf, 0, 4096)
  let status = encoder.encodeInto(JTextDecoder::from_string("hello"), buf)
  console.log(status)
}

///|
pub fn entry_test() -> Unit {
  println("BEGIN TEST")
  test_array()
  test_arraybuffer()
  test_dataview()
  test_date()
  test_error()
  test_global()
  test_json_to_any()
  test_map()
  test_new()
  test_regexp()
  test_set()
  test_textdecoder_from_string()
  test_textencoder()
  test_typedarray()
  test_console()
  // test_try_catch() 
  println("END TEST")
}

///|
/// wasm backend doesn't support now.
/// https://github.com/moonbitlang/moonbit-docs/issues/620
fn test_try_catch() -> Unit {
  let e = JError::new(JTextDecoder::from_string(""))
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
