#[macro_use]
extern crate helix;

fn rust_fibonacci(n: i32) -> i32 {
  match n {
    1 => 1,
    2 => 1,
    _ => rust_fibonacci(n - 1) + rust_fibonacci(n - 2)
  }
}

ruby! {
  class Fibonacci {
    def make_it_so_number_one(n: i32) -> i32 {
      rust_fibonacci(n)
    }
  }
}
