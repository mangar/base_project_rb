lambda {
  _setups = []
  _events = {}
  
  Kernel.send :define_method, :setup do |&block|
    _setups << block
  end
  Kernel.send :define_method, :setups do 
    _setups
  end

  Kernel.send :define_method, :event do |name, &block|
    _events[name] = block
  end
  Kernel.send :define_method, :events do
    _events
  end
  
}.call


Dir.glob('*events.rb').each { |file| 
  puts "loading .. #{file}" 
  
  load file
  
  puts "setups: #{setups}"
  puts "events:"  
  events.each_pair { |k,v| 
    puts "         -> #{k} : #{v}"
  }
  
  puts "Running setups....."
  setups.each { |setup|
    setup.call
  }
  
  puts "... running events ..."
  events.each_pair { |k, block|
    puts "Event: #{k}, running...."
    block.call
    
  }
  
  
  
}



# puts methods.grep(/^event/)
