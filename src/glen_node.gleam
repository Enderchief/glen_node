import gleam/javascript/promise.{type Promise}
import glen

@external(javascript, "./glen_node_ffi.mjs", "serve_node")
pub fn serve(
  port: Int,
  handler: fn(glen.Request) -> Promise(glen.Response),
) -> Result(Nil, String)
