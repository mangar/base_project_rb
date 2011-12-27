require "#{__FILE__}"

dir = "#{File.dirname(__FILE__)}/lib"
Dir.entries(dir).grep(/(.*)\.rb/) { require "#{dir}/#{$1}" }

