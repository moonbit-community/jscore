
import fs from 'node:fs/promises';

export let make_closure = (funcref: Function, closure: unknown) => funcref.bind(null, closure)

export let object_setter = (obj: Record<any, any>, index: any, value: any): void => { obj[index] = value }
export let object_getter = (obj: Record<any, any>, index: any): any => { return obj[index] }

export let empty_object = () => { return {} }
export let bool_to_number = (b: boolean) => { return Number(b) }
export let number_to_bool = (b: number) => { return Boolean(b) }

export let try_catch_finally = (fn_try: () => void, fn_catch: (e: unknown) => void, fn_finally: () => void) => {
  try {
    fn_try()
  } catch (e: unknown) {
    fn_catch(e)
  } finally {
    fn_finally()
  }
}

export let throw_error = (e: unknown) => { throw e; }

export type Prototype = {
  readonly name: string
  readonly prototype: any
}


let wrap = (f: any) => Function.call.bind(f)

export let prototype_to_ffi = (ty: Prototype): WebAssembly.ModuleImports => {
  let method = Object.getOwnPropertyDescriptors(ty.prototype)
  let obj: any = {}


  // method
  for (const [key, tpd] of Object.entries(method)) {
    if (key !== 'constructor' && typeof tpd.value === 'function') {
      obj[key] = wrap(tpd.value)
    } else {
      if (typeof tpd.get === 'function') {
        obj["get_" + key] = wrap(tpd.get)
      }
      if (typeof tpd.set === 'function') {
        obj["set_" + key] = wrap(tpd.set)
      }
    }
  }
  let static_method = Object.getOwnPropertyDescriptors(ty)
  // static
  for (const [key, tpd] of Object.entries(static_method)) {
    if (typeof tpd.value === 'function') {
      obj["static_" + key] = tpd.value
    }
    else {
      if (typeof tpd.get === 'function') {
        obj["static_get_" + key] = tpd.get
      }
      if (typeof tpd.set === 'function') {
        obj["static_set_" + key] = tpd.set
      }
    }
  }
  return obj
}

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray
// TypedArray is intrinsic
// https://tc39.es/ecma262/multipage/indexed-collections.html#sec-%typedarray%-intrinsic-object



export enum Backend {
  js,
  wasm,
  wasm_gc,
}

export enum BuildType {
  debug = "debug",
  release = "release"
}

export let panic = () => { throw Error("panic") }


export let moonbit_ffi = async (
  backend: Backend,
  cwd: string,
  build_type: BuildType,
  package_path: string,
  import_object: (dest: any) => void): Promise<WebAssembly.Exports> => {

  let backend_path = null

  if (backend === Backend.js) {
    backend_path = "js"
  } else if (backend === Backend.wasm) {
    backend_path = "wasm"
  } else if (backend === Backend.wasm_gc) {
    backend_path = "wasm-gc"
  } else {
    panic()
  }
  let backend_suffix = null

  if (backend === Backend.js) {
    backend_suffix = "js"
  } else if (backend === Backend.wasm || backend === Backend.wasm_gc) {
    backend_suffix = "wasm"
  } else {
    panic()
  }

  if (backend === Backend.js) {
    let import_path = `file:///${cwd}/target/${backend_path}/${build_type}/build/${package_path}/${package_path}.${backend_suffix}`
    import_object(globalThis)
    return import(import_path)
  } if (backend === Backend.wasm || backend === Backend.wasm_gc) {
    let importObject = {}
    import_object(importObject)
    let import_path = `target/${backend_path}/${build_type}/build/${package_path}/${package_path}.${backend_suffix}`
    // fetch API doesn't fetch resource from file protocol, e.g. `file:///`
    let instance = await WebAssembly.instantiate(await fs.readFile(import_path), importObject)
    return instance.instance.exports
  } else {
    return panic()
  }
}