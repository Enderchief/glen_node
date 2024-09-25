import gleeunit
import gleeunit/should
import glen_node

pub fn main() {
  gleeunit.main()
}

pub fn out_of_range_port_test() {
  should.be_error(
    glen_node.serve(-1, fn(_request) { panic as "should never start" }),
  )
}
