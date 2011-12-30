module Kernel
  def setup (&block)
    @setups << block
  end  
  def event(name, &block)
    @events[name] = block
  end
end


Dir.glob('*events.rb').each { |file| 
  puts "loading .. #{file}" 
  
  @events = {}
  @setups = []  
  
  load file
  
  puts "setups: #{@setups}"
  puts "events:"  
  @events.each_pair { |k,v| 
    puts "         -> #{k} : #{v}"
  }
  
  puts "Running setups....."
  @setups.each { |setup|
    setup.call
  }
  
  puts "... running events ..."
  @events.each_pair { |k, block|
    puts "Event: #{k}, running...."
    block.call
    
  }
  
  
  
}



# puts methods.grep(/^event/)
