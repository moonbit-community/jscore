///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/byteLength)
pub fn SharedArrayBuffer::byteLength(self : SharedArrayBuffer) -> Int = "illusory0x0_core_SharedArrayBuffer" "get_byteLength"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/slice)
pub fn SharedArrayBuffer::slice(
  self : SharedArrayBuffer,
  start : Int,
  end : Int
) -> SharedArrayBuffer = "illusory0x0_core_SharedArrayBuffer" "slice"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/maxByteLength)
pub fn SharedArrayBuffer::maxByteLength(self : SharedArrayBuffer) -> Int = "illusory0x0_core_SharedArrayBuffer" "get_maxByteLength"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/growable)
pub fn SharedArrayBuffer::growable(self : SharedArrayBuffer) -> Bool = "illusory0x0_core_SharedArrayBuffer" "get_growable"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/grow)
pub fn SharedArrayBuffer::grow(self : SharedArrayBuffer, newByteLength : Int) = "illusory0x0_core_SharedArrayBuffer" "grow"
