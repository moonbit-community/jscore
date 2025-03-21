///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getInt8)
pub fn JDataView::getInt8(self : JDataView, byteOffset : Int) -> Byte = "DataView" "getInt8"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getUint8)
pub fn JDataView::getUint8(self : JDataView, byteOffset : Int) -> Byte = "DataView" "getUint8"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getInt16)
pub fn JDataView::getInt16(
  self : JDataView,
  byteOffset : Int,
  littleEndian : Bool
) -> Int16 = "DataView" "getInt16"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getUint16)
pub fn JDataView::getUint16(
  self : JDataView,
  byteOffset : Int,
  littleEndian : Bool
) -> UInt16 = "DataView" "getUint16"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getInt32)
pub fn JDataView::getInt32(
  self : JDataView,
  byteOffset : Int,
  littleEndian : Bool
) -> Int = "DataView" "getInt32"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getUint32)
pub fn JDataView::getUint32(
  self : JDataView,
  byteOffset : Int,
  littleEndian : Bool
) -> UInt = "DataView" "getUint32"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getFloat32)
pub fn JDataView::getFloat32(
  self : JDataView,
  byteOffset : Int,
  littleEndian : Bool
) -> Float = "DataView" "getFloat32"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getFloat64)
pub fn JDataView::getFloat64(
  self : JDataView,
  byteOffset : Int,
  littleEndian : Bool
) -> Double = "DataView" "getFloat64"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getBigInt64)
pub fn JDataView::getBigInt64(
  self : JDataView,
  byteOffset : Int,
  littleEndian : Bool
) -> Int64 = "DataView" "getBigInt64"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView/getBigUint64)
pub fn JDataView::getBigUint64(
  self : JDataView,
  byteOffset : Int,
  littleEndian : Bool
) -> UInt64 = "DataView" "getBigUint64"
