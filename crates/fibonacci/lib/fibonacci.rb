require "helix_runtime"

begin
  require "fibonacci/native"
rescue LoadError
  warn "Unable to load fibonacci/native. Please run `rake build`"
end
