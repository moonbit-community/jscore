import fs from 'node:fs/promises';
import { importObject } from '../../ts-import-object/import-object.js'

import Benchmark from 'benchmark';

let wasmUrl = './target/wasm-gc/release/build/benchmark/benchmark.wasm'
const wasmBuffer = await fs.readFile(wasmUrl);
const wasmModule = await WebAssembly.instantiate(wasmBuffer, importObject);
let { 
  benchmark_array_op_set_fill_1000,
  benchmark_array_set_fill_1000,
  benchmark_typedarray_fill_1000,
  benchmark_moonbit_fixedarray_fill_1000
} = wasmModule.instance.exports as {
  entry_test: arrow<Unit, Unit>,
  benchmark_array_op_set_fill_1000: arrow<Unit, Unit>,
  benchmark_array_set_fill_1000: arrow<Unit, Unit>,
  benchmark_typedarray_fill_1000: arrow<Unit, Unit>,
  benchmark_moonbit_fixedarray_fill_1000 : arrow<Unit,Unit>
}




let benchmark = () => {
  let suite = new Benchmark.Suite

  let arr = []
  let typed_arr = new Int32Array(1000)
  
  suite.add("NodeJs:Array/fill_1000",() => {
    for (let i = 0; i < 1000; ++i) {
      arr[i] = i
    }
  })
  
  suite.add("NodeJs:TypedArray/fill_1000",() => {
    for (let i = 0; i < 1000; ++i) {
      typed_arr[i] = i
    }
  })
  
  suite.add("WASM_FFI:TypedArray/fill_1000",() => {
     benchmark_typedarray_fill_1000()
  })
  
  suite.add("WASM_FFI:Array::set/fill_1000",() => {
    benchmark_array_set_fill_1000()
  })
  
  suite.add("WASM_FFI:Array::op_set/fill_1000",() => {
    benchmark_array_op_set_fill_1000()
  })
  
  suite.add("WASM_Moonbit:FixedArray::op_set/fill_1000",() => {
    benchmark_moonbit_fixedarray_fill_1000()
  })
  
  suite.on('cycle', (e : Benchmark.Event) => {
    console.log(String(e.target))
  })
  
  suite.on('complete', () => {
    console.log('Fastest is ' + suite.filter('fastest').map('name'));
  })
  
  
  suite.run(
    { 'async': true }
  )
}

benchmark()
