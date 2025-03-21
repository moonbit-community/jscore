///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/resize)
pub fn JArrayBuffer::resize(self : JArrayBuffer, newByteLength : Int) = "ArrayBuffer" "resize"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JArrayBuffer/slice)
pub fn JArrayBuffer::slice(
  self : JArrayBuffer,
  start : Int,
  end : Int
) -> JArrayBuffer = "SharedArrayBuffer" "slice"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/transfer)
pub fn JArrayBuffer::transfer(
  self : JArrayBuffer,
  newByteLength : Int
) -> JArrayBuffer = "ArrayBuffer" "transfer"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/transferToFixedLength)
pub fn JArrayBuffer::transferToFixedLength(
  self : JArrayBuffer,
  newByteLength : Int
) -> JArrayBuffer = "ArrayBuffer" "transferToFixedLength"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/byteLength)
pub fn JArrayBuffer::byteLength(self : JArrayBuffer) -> Int = "ArrayBuffer" "get_byteLength"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/maxByteLength)
pub fn JArrayBuffer::maxByteLength(self : JArrayBuffer) -> Int = "ArrayBuffer" "get_maxByteLength"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/resizable)
pub fn JArrayBuffer::resizable(self : JArrayBuffer) -> Bool = "ArrayBuffer" "get_resizable"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/detached)
pub fn JArrayBuffer::detached(self : JArrayBuffer) -> Bool = "ArrayBuffer" "get_detached"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer/isView)
pub fn JArrayBuffer::isView(self : JAny) -> Bool = "ArrayBuffer" "static_isView"
