///|
fn _true() -> Any = "illusory0x0_core_global" "true"

///|
fn _false() -> Any = "illusory0x0_core_global" "false"

///|
fn _null() -> Any = "illusory0x0_core_global" "null"

///|
fn _undefined() -> Any = "illusory0x0_core_global" "undefined"

///|
fn js_typeof(self : Any) -> String_ = "illusory0x0_core_global" "typeof"

///|
fn js_instanceof(self : Any, constructor : Any) -> Bool = "illusory0x0_core_global" "instanceof"

///|
fn js_equal(self : Any, other : Any) -> Bool = "illusory0x0_core_global" "equal"

///|
impl Eq for Any with op_equal(self, other) {
  self.js_equal(other)
}

///|
pub let js_true : Any = _true()

///|
pub let js_false : Any = _false()

///|
pub let js_null : Any = _null()

///|
pub let js_undefined : Any = _undefined()

///|
pub fn js_try_catch_finally(
  fn_try : () -> Unit,
  fn_catch : (Error_) -> Unit,
  fn_finally : () -> Unit
) = "illusory0x0_core_global" "try_catch_finally"

///|
pub fn js_throw(e : Error_) = "illusory0x0_core_global" "throw_error"

///|
fn _utf16Decoder() -> TextDecoder = "illusory0x0_core_global" "utf16Decoder"

///|
pub let utf16Decoder : TextDecoder = _utf16Decoder()

///|
let buffer : Ref[ArrayBuffer] = Ref::new(ArrayBuffer::new(8192 << 1))

///|
fn _console() -> Console = "illusory0x0_core_global" "console"

///|
pub let console : Console = _console()

///|
pub fn TextDecoder::from_string(str : String) -> String_ {
  let slen = str.length()
  let blen = slen << 1
  if blen >= buffer.val.byteLength() {
    buffer.val = ArrayBuffer::new(blen)
  }
  let buf = buffer.val
  let arr : TypedArray[UInt16] = TypedArray::make(buf, 0, slen)
  for i in 0..<slen {
    arr[i] = str[i].to_int().to_uint16()
  }
  utf16Decoder.decode(arr)
}

///|
pub fn Any::from_json(json : Json) -> Any {
  match json {
    Array(arr) => {
      let res : Array[Any] = Array::empty()
      for i in 0..<arr.length() {
        res[i] = Any::from_json(arr[i])
      }
      res |> Js::to_any
    }
    String(str) => TextDecoder::from_string(str) |> Js::to_any
    Number(num) => num |> Js::to_any
    False => js_false
    True => js_true
    Null => js_null
    Object(map) => {
      let obj = Object::empty()
      for key, val in map {
        obj[TextDecoder::from_string(key)] = Any::from_json(val).to_any()
      }
      obj.to_any()
    }
  }
}

///|
fn map_to_any(map : @builtin.Map[String, Any]) -> Any {
  let obj = Object::empty()
  for key, val in map {
    obj[TextDecoder::from_string(key)] = val.to_any()
  }
  obj.to_any()
}
