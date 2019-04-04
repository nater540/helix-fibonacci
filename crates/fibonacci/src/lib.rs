#[macro_use]
extern crate helix;

fn _fibonacci(n: i32) -> i32 {
      match n {
        1 => 1,
        2 => 1,
        _ => _fibonacci(n - 1) + _fibonacci(n - 2)
      }
    }

ruby! {
  class Fibonacci {
    def make_it_so_number_one(n: i32) -> i32 {
      _fibonacci(n)
    }
  }
}
