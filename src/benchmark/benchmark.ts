import { import_object } from '../../ts-import-object/import-object.js'
import { Backend, BuildType, moonbit_ffi } from '../../ts-import-object/moonbit_ffi.js'

import Benchmark from 'benchmark';


type export_type = {
  entry_test: arrow<Unit, Unit>,
  benchmark_array_op_set_fill_1000: arrow<Unit, Unit>,
  benchmark_array_set_fill_1000: arrow<Unit, Unit>,
  benchmark_typedarray_fill_1000: arrow<Unit, Unit>,
  benchmark_moonbit_fixedarray_fill_1000: arrow<Unit, Unit>
}
let export_moonbit_benchmark = async (backend: Backend, build_type: BuildType): Promise<export_type> => {
  let cwd = process.cwd().replaceAll("\\", "/")

  return await moonbit_ffi(backend, cwd, build_type, "benchmark", import_object) as any
}

let {
  benchmark_array_op_set_fill_1000,
  benchmark_array_set_fill_1000,
  benchmark_typedarray_fill_1000,
  benchmark_moonbit_fixedarray_fill_1000
} = await export_moonbit_benchmark(Backend.wasm, BuildType.release)




let benchmark = () => {
  let suite = new Benchmark.Suite

  let arr = []
  let typed_arr = new Int32Array(1000)

  suite.add("NodeJs:Array/fill_1000", () => {
    for (let i = 0; i < 1000; ++i) {
      arr[i] = i
    }
  })

  suite.add("NodeJs:TypedArray/fill_1000", () => {
    for (let i = 0; i < 1000; ++i) {
      typed_arr[i] = i
    }
  })

  suite.add("FFI:TypedArray/fill_1000", () => {
    benchmark_typedarray_fill_1000()
  })

  suite.add("FFI:Array::set/fill_1000", () => {
    benchmark_array_set_fill_1000()
  })

  suite.add("FFI:Array::op_set/fill_1000", () => {
    benchmark_array_op_set_fill_1000()
  })

  suite.add("Moonbit:FixedArray::op_set/fill_1000", () => {
    benchmark_moonbit_fixedarray_fill_1000()
  })

  suite.on('cycle', (e: Benchmark.Event) => {
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
