///|
using @jscore {type ArrayBuffer, type Array, type TypedArray}

///|
let typed_arr : TypedArray[Int32] = TypedArray::new(
  ArrayBuffer::new(1000 * 4),
  0,
  1000,
)

///|
pub fn benchmark_typedarray_fill_1000() -> Unit {
  for i in 0..<1000 {
    typed_arr[i] = i
  }
}

///|
let arr : Array[Int32] = Array::new()

///|
pub fn benchmark_array_op_set_fill_1000() -> Unit {
  for i in 0..<1000 {
    arr[i] = i
  }
}

///|
pub fn benchmark_array_set_fill_1000() -> Unit {
  for i in 0..<1000 {
    arr.set(i, i)
  }
}

///|
let mbt_fixed_arr : FixedArray[Int32] = FixedArray::make(1000, 0)

///|
pub fn benchmark_moonbit_fixedarray_fill_1000() -> Unit {
  for i in 0..<1000 {
    mbt_fixed_arr[i] = i
  }
}
