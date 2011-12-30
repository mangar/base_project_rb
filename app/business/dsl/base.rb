module  Dsl
  class Base    

    def setup &block
      @_setups = [] unless @_setups
      @_setups << block
    end
    def setups
      @_setups
    end
    
    def _run_setups
      puts "Running Setups..."
      @_setups.each do |stp|
        puts "Setup: #{stp}"
        stp.call
      end
    end
    
        
    
    def event(name, &block)
      @_events = {} unless @_events
      @_events[name] = block
    end
    def events
      @_events
    end
      
    def _run_events
      @_events.each_pair do |k, block| 
        puts "Evento: #{k} - #{block}"
        block.call 
      end
    end

    
    def run
      puts "Running DSL...."
      
      _run_setups
      _run_events
      
      puts "DSL ran!"
    end
    
  end
end

