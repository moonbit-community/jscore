///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/resize)
pub fn ArrayBuffer::resize(self : ArrayBuffer, newByteLength : Int) = "illusory0x0_core_ArrayBuffer" "resize"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/slice)
pub fn ArrayBuffer::slice(
  self : ArrayBuffer,
  start : Int,
  end : Int
) -> ArrayBuffer = "illusory0x0_core_ArrayBuffer" "slice"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/transfer)
pub fn ArrayBuffer::transfer(
  self : ArrayBuffer,
  newByteLength : Int
) -> ArrayBuffer = "illusory0x0_core_ArrayBuffer" "transfer"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/transferToFixedLength)
pub fn ArrayBuffer::transferToFixedLength(
  self : ArrayBuffer,
  newByteLength : Int
) -> ArrayBuffer = "illusory0x0_core_ArrayBuffer" "transferToFixedLength"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/byteLength)
pub fn ArrayBuffer::byteLength(self : ArrayBuffer) -> Int = "illusory0x0_core_ArrayBuffer" "get_byteLength"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/maxByteLength)
pub fn ArrayBuffer::maxByteLength(self : ArrayBuffer) -> Int = "illusory0x0_core_ArrayBuffer" "get_maxByteLength"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/resizable)
pub fn ArrayBuffer::resizable(self : ArrayBuffer) -> Bool = "illusory0x0_core_ArrayBuffer" "get_resizable"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/detached)
pub fn ArrayBuffer::detached(self : ArrayBuffer) -> Bool = "illusory0x0_core_ArrayBuffer" "get_detached"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/isView)
pub fn ArrayBuffer::isView(self : Any) -> Bool = "illusory0x0_core_ArrayBuffer" "static_isView"
