///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charCodeAt)
pub fn String_::charCodeAt(self : String_, index : Int) -> Char = "illusory0x0_core_String" "charCodeAt"

///|
pub fn String_::op_get(self : String_, index : Int) -> Char {
  self.charCodeAt(index)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/length)
pub fn String_::length(self : String_) -> Int = "illusory0x0_core_global" "length"

///|
pub fn String_::to_string(self : String_) -> String {
  let slen = self.length()
  let blen = slen << 1
  let arr : FixedArray[Byte] = FixedArray::make(blen, 0)
  for i = 0, j = 0; i < slen; i = i + 1, j = j + 2 {
    let ch = self[i].to_uint()
    arr[j] = (ch & 0xff).to_byte()
    arr[j + 1] = (ch >> 8).to_byte()
  }
  let bytes : Bytes = coerce(arr)
  bytes.to_unchecked_string()
}
