# Helix Fibonacci

## Preview

```json
{
  "description": "Calculated the fibonacci sequence for `42`",
  "improvement": "Rust was 4447% faster than Ruby",
  "ruby": {
    "value": 267914296,
    "time": {
      "label": "",
      "real": 23.05894000013359,
      "cstime": 0.0,
      "cutime": 0.0,
      "stime": 0.18148300000000006,
      "utime": 22.078659999999996,
      "total": 22.260142999999996
    }
  },
  "rust": {
    "value": 267914296,
    "time": {
      "label": "",
      "real": 0.5071640000678599,
      "cstime": 0.0,
      "cutime": 0.0,
      "stime": 0.002789999999999848,
      "utime": 0.49563899999999705,
      "total": 0.4984289999999969
    }
  }
}
```

## Getting Started

1) Install the Rust compiler  -> `curl https://sh.rustup.rs -sSf | sh`
2) Install project gems       -> `bundle install`
3) Build the native gem       -> `rake build`
4) Start the rails server     -> `rails s`
5) Open the benchmark page    -> `http://localhost:3000/benchmark/42` _(Replace `42` with any number you want to calculate a fibonacci sequence for)_

## Useful Links

[Helix - Native Ruby Extensions](https://usehelix.com)
