module  Dsl
  class Base    

    init = lambda {      
      _setups = []
      _events = {}

      Dsl::Base.send :define_method, :setup do |&block|
        _setups << block if block
      end

      Dsl::Base.send :define_method, :setups do 
        _setups
      end

      Dsl::Base.send :define_method, :_run_setups do
        puts "Running Setups..."
        _setups.each do |stp|
          # puts "Setup: #{stp}"
          stp.call
        end        
      end



      Dsl::Base.send :define_method, :event do |name, &block|
        _events[name] = block if block
      end

      Dsl::Base.send :define_method, :events do
        _events
      end

      Dsl::Base.send :define_method, :_run_events do
        puts "Running Events.."
        
        _events.each_pair do |k, block|
          # puts "Evento: #{k} - #{block}"
          block.call 
        end
      end

    }.call
    
    

    def run
      _run_setups
      _run_events
    end
    
  end
end

