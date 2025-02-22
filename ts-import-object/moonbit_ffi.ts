
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