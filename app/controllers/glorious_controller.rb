class GloriousController < ApplicationController

  def index
    render json: { message: 'This is not the page you were looking for... Move along, move along...' }
  end

  def benchmark
    calculate = (params[:calculate] || 42).to_i

    ruby_value = 0
    ruby_benchmark = Benchmark.measure do
      ruby_value = fibonacci(calculate)
    end

    rust_value = 0
    rust_benchmark = Benchmark.measure do
      rust_value = Fibonacci.make_it_so_number_one(calculate)
    end

    moar_powar = ruby_benchmark.real - rust_benchmark.real
    moar_powar = (moar_powar / rust_benchmark.real * 100).round

    render json: {
      description: "Calculated the fibonacci sequence for `#{calculate}`",
      improvement: "Rust was #{moar_powar}% faster than Ruby",
      ruby: {
        value: ruby_value,
        time:  ruby_benchmark
      },
      rust: {
        value: rust_value,
        time:  rust_benchmark
      }
    }
  end

  private

  def fibonacci(n)
    return n if n <= 1 
    fibonacci( n - 1 ) + fibonacci( n - 2 )
  end
end
