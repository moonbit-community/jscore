///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/byteLength)
pub fn JSharedArrayBuffer::byteLength(self : JSharedArrayBuffer) -> Int = "illusory0x0_core_SharedArrayBuffer" "get_byteLength"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/slice)
pub fn JSharedArrayBuffer::slice(
  self : JSharedArrayBuffer,
  start : Int,
  end : Int
) -> JSharedArrayBuffer = "illusory0x0_core_SharedArrayBuffer" "slice"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/maxByteLength)
pub fn JSharedArrayBuffer::maxByteLength(self : JSharedArrayBuffer) -> Int = "illusory0x0_core_SharedArrayBuffer" "get_maxByteLength"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/growable)
pub fn JSharedArrayBuffer::growable(self : JSharedArrayBuffer) -> Bool = "illusory0x0_core_SharedArrayBuffer" "get_growable"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/grow)
pub fn JSharedArrayBuffer::grow(self : JSharedArrayBuffer, newByteLength : Int) = "illusory0x0_core_SharedArrayBuffer" "grow"
