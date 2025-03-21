///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setInt8)
pub fn JDataView::setInt8(self : JDataView, byteOffset : Int, value : Byte) = "DataView" "setInt8"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setUint8)
pub fn JDataView::setUint8(self : JDataView, byteOffset : Int, value : Byte) = "DataView" "setUint8"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setInt16)
pub fn JDataView::setInt16(
  self : JDataView,
  byteOffset : Int,
  value : Int16,
  littleEndian : Bool
) = "DataView" "setInt16"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setUint16)
pub fn JDataView::setUint16(
  self : JDataView,
  byteOffset : Int,
  value : UInt16,
  littleEndian : Bool
) = "DataView" "setUint16"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setInt32)
pub fn JDataView::setInt32(
  self : JDataView,
  byteOffset : Int,
  value : Int,
  littleEndian : Bool
) = "DataView" "setInt32"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setUint32)
pub fn JDataView::setUint32(
  self : JDataView,
  byteOffset : Int,
  value : UInt,
  littleEndian : Bool
) = "DataView" "setUint32"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setFloat32)
pub fn JDataView::setFloat32(
  self : JDataView,
  byteOffset : Int,
  value : Float,
  littleEndian : Bool
) = "DataView" "setFloat32"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setFloat64)
pub fn JDataView::setFloat64(
  self : JDataView,
  byteOffset : Int,
  value : Double,
  littleEndian : Bool
) = "DataView" "setFloat64"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setBigInt64)
pub fn JDataView::setBigInt64(
  self : JDataView,
  byteOffset : Int,
  value : Int64,
  littleEndian : Bool
) = "DataView" "setBigInt64"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/setBigUint64)
pub fn JDataView::setBigUint64(
  self : JDataView,
  byteOffset : Int,
  value : UInt64,
  littleEndian : Bool
) = "DataView" "setBigUint64"
